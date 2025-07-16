---
layout: default
title: "|--Responder & SMB"
date: 2025-07-16
tags: [networking, protocols, dns]
---

# Responder & SMB Relay Attack (Remote Use Case)

> **Disclaimer:** This guide is for **educational purposes only**. Use it responsibly.

This note is focusing on `responder` and ARP poisoning — specifically, how to use `responder` **without being on the same network**.

I'm not going to explain how `responder` works in detail — there are plenty of great guides out there. Same goes for LLMNR, NBT-NS, and MDNS poisoning.

---

## Table of Contents

- [Introduction](#introduction)  
- [Packets Everywhere](#packets-everywhere)  
- [SMB Relaying](#smb-relaying)

---

## Introduction

here’s how to use `responder` without being directly on the target network. The idea is to demonstrate how you can listen to broadcasts and perform relay attacks remotely.

`Responder` is typically used to gather credentials. If you can’t relay the hashes, just crack them.

This tool works by exploiting Windows name resolution protocols like LLMNR, which kicks in when DNS fails — essentially acting like another type of ARP poisoning.

---

## Packets Everywhere

Keep in mind: `responder` was designed to work at **OSI Layer 2 and above**. Most pentesters don’t use `responder` in remote scenarios, but if you do, you’ll usually be proxy pivoting (Layer 4+).

### Quick OSI Refresher:
- **Layer 2**: Ethernet, bridges  
- **Layer 3**: IP, IPSec, ICMP  
- **Layer 4**: TCP, UDP

### 1. VPN / Layer 2 Pivoting

Commercial tools like Cobalt Strike or Metasploit Pro have Layer 2 pivoting built in:  
 [covert-vpn-layer-2-pivoting-for-cobalt-strike](https://www.cobaltstrike.com/blog/covert-vpn-layer-2-pivoting-for-cobalt-strike/)

Free/DIY options include:

- OpenVPN  
- [`simpletun`](https://github.com/gregnietsky/simpletun)  
- Windows Layer 2 pivot client:  
   [Layer2-Pivoting-Client](https://github.com/rsmudge/Layer2-Pivoting-Client)  
- WinPcap install (DLLs/drivers – requires admin):  
   [Winpcap_Install](https://github.com/3gstudent/Winpcap_Install)

---

### 2. Port Hijacking

A quick workaround is to redirect SMB traffic to your own server with a tool like:

- [DivertTCPconn](https://github.com/Arno0x/DivertTCPconn)

This lets you capture NetNTLMv2 hashes remotely.

---

## SMB Relaying

If you’re attempting SMB relaying, you’ll need a list of targets **without SMB signing** enabled.  
(Note: it's enabled by default on Windows 10/11, so your mileage may vary.)

If relaying doesn’t work, try cracking the hashes instead.

### Discovering Unsigned SMB Targets

Use any of these to find systems without SMB signing:

```bash
nmap --script=smb2-security-mode.nse
```
```bash
RunFinger.py   # included with responder
```
```bash
crackmapexec smb IP/24 --gen-relay-list filename.txt
```
