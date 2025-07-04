---
layout: default
title: "|--Http vs Https "
date: 2025-07-04
tags: [networking]
---
# HTTPS vs HTTP — Data in Transit

> Understand what’s happening under the hood. No edits, no filters.

Hypertext Transfer Protocol (HTTP) is the backbone protocol of the World Wide Web. However, all information carried in HTTP is transmitted in plaintext from the source computer to the destination on the internet. HTTP does not protect data from alteration or interception by malicious parties, which is a serious threat to privacy, identity, and information security. All browsing activity should be considered to be at risk.

A common exploit of HTTP is called iFrame (inline frame) injection. Most web-based threats consist of malware scripts that have been planted on webservers. These webservers then direct browsers to infected servers by loading iframes. In iFrame injection, a threat actor compromises a webserver and plants malicious code which creates an invisible iFrame on a commonly visited webpage. When the iFrame loads, malware is downloaded, frequently from a different URL than the webpage that contains the iFrame code.

To address the alteration or interception of confidential data, many commercial organizations have adopted HTTPS or implemented HTTPS-only policies to protect visitors to their websites and services.

HTTPS adds a layer of encryption to the HTTP protocol by using secure socket layer (SSL). This makes the HTTP data unreadable as it leaves the source computer until it reaches the server. Note that HTTPS is not a mechanism for web server security. It only secures HTTP protocol traffic while it is in transit.

Unfortunately, the encrypted HTTPS traffic complicates network security monitoring. Some security devices include SSL decryption and inspection; however, this can present processing and privacy issues. In addition, HTTPS adds complexity to packet captures due to the additional messaging involved in establishing the encrypted connection. This process is summarized in the figure and represents additional overhead on top of HTTP.
