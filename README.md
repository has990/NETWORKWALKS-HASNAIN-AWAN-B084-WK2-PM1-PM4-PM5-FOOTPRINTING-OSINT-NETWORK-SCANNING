# Week 2 — Cybersecurity Reconnaissance & Network Scanning

<p align="center">
  <strong>NetworkWalks Cybersecurity Internship · Batch B084</strong><br>
  <em>Kali Linux footprinting, theHarvester OSINT and Zenmap host discovery</em>
</p>

## Project overview

This repository contains the Week 2 internship deliverables for Hasnain Awan. The work covers three selected practical modules:

- **W2-PM1 — Footprinting:** WHOIS, WhatWeb, NSLookup, cURL, WAFW00F and DNSRecon against `networkwalks.com`.
- **W2-PM4 — OSINT enumeration:** theHarvester 4.11.1 against `microsoft.com`, using the Baidu source and all available sources.
- **W2-PM5 — Local network discovery:** Zenmap/Nmap host discovery on the authorised local Wi-Fi subnet.

The activities are reconnaissance and host-discovery exercises. The Zenmap command used `-sn`, which performs host discovery without a port scan. No exploitation was performed.

## Recorded outcomes

| Module | Environment / target | Recorded result |
|---|---|---|
| W2-PM1 | Kali Linux · `networkwalks.com` | Domain registration, web technology, DNS, HTTP headers, WAF and DNS metadata documented. |
| W2-PM4 | Kali Linux · `microsoft.com` | Baidu returned no records in this run. The all-sources run displayed 9,958 hosts, 111 IPs and 3 email addresses; provider/API limitations are documented. |
| W2-PM5 | Windows · Zenmap/Nmap 7.993 | Ping scan checked 256 addresses and reported 4 hosts up in 14.89 seconds. |

These are observations from the recorded runs, not proof of exploitable vulnerabilities or a complete inventory of the targets.

## Repository structure

```text
.
├── README.md
├── docs/
│   ├── Week2_Cybersecurity_Internship_Report_Hasnain_Awan.pdf
│   └── Week2_Cybersecurity_Internship_Report_Hasnain_Awan.docx
└── evidence/
    ├── 01-PM1-WHOIS-domain-registration.png
    ├── ...
    └── 18-PM5-Zenmap-topology.png
```

## Report downloads

- [PDF project report](docs/Week2_Cybersecurity_Internship_Report_Hasnain_Awan.pdf)
- [Editable Word report](docs/Week2_Cybersecurity_Internship_Report_Hasnain_Awan.docx)
- [Evidence screenshots](evidence/)

## Privacy and authorization

The report's evidence appendix uses supplied screenshots with targeted redactions, including MAC-address identifiers, cookie values and a DNS verification token. Do not add unredacted source captures, credentials, API keys, session tokens, or personal device identifiers to this public repository.

All testing should be limited to systems and networks for which permission has been granted. Public-domain reconnaissance and local network discovery must remain within the scope of the internship exercise and applicable authorization.

---

**Prepared by:** Hasnain Awan · **Batch:** B084 · **Project:** Week 2 · **Modules:** W2-PM1, W2-PM4, W2-PM5
