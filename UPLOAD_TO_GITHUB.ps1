$ErrorActionPreference = "Stop"

# NetworkWalks Week 2 GitHub uploader
# Requires Git for Windows and GitHub CLI (gh), authenticated with `gh auth login`.

$Owner = "has990"
$RepoName = "NETWORKWALKS-HASNAIN-AWAN-B084-WK2-PM1-PM4-PM5-FOOTPRINTING-OSINT-NETWORK-SCANNING"
$FullName = "$Owner/$RepoName"
$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "Checking required tools..." -ForegroundColor Cyan
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git was not found. Install Git for Windows, then run this script again."
}
if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) was not found. Install it, then run: gh auth login"
}

gh auth status | Out-Null
if ($LASTEXITCODE -ne 0) {
    throw "GitHub CLI is not authenticated. Run: gh auth login"
}

Set-Location $ProjectRoot

if (-not (Test-Path (Join-Path $ProjectRoot ".git"))) {
    git init -b main
    if ($LASTEXITCODE -ne 0) { throw "git init failed." }
}

git add .
if ($LASTEXITCODE -ne 0) { throw "git add failed." }

git diff --cached --quiet
if ($LASTEXITCODE -eq 0) {
    Write-Host "No new changes to commit." -ForegroundColor Yellow
} else {
    git commit -m "Add Week 2 cybersecurity internship project"
    if ($LASTEXITCODE -ne 0) { throw "git commit failed." }
}

$Existing = $false
gh repo view $FullName --json name | Out-Null
if ($LASTEXITCODE -eq 0) { $Existing = $true }

if (-not $Existing) {
    Write-Host "Creating new public Week 2 repository..." -ForegroundColor Cyan
    gh repo create $FullName --public --source . --remote origin --push
    if ($LASTEXITCODE -ne 0) { throw "Repository creation or initial push failed." }
} else {
    Write-Host "Repository already exists; connecting and pushing..." -ForegroundColor Cyan
    $Remote = git remote
    if ($Remote -notcontains "origin") {
        git remote add origin "https://github.com/$FullName.git"
        if ($LASTEXITCODE -ne 0) { throw "Could not add origin remote." }
    }
    git branch -M main
    git push -u origin main
    if ($LASTEXITCODE -ne 0) { throw "GitHub push failed." }
}

Write-Host ""
Write-Host "Upload completed." -ForegroundColor Green
Write-Host "Repository: https://github.com/$FullName"
