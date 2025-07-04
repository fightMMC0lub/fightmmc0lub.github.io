---
layout: default
title: "|--AvoiD TrackinG"
date: 2025-06-30
tags: [linux, openbsd, wsl, macos]
---

## Simple Privacy Tool: `goog`

A small shell script to perform **Google searches** using the **Lynx text browser**, helping to **reduce tracking** and improve **terminal-based privacy**.

## Requirements

- `lynx` (text-based web browser)
- Unix-like environment (Linux, macOS, BSD ...)

## Usage

```bash
./goog [search terms]
```
goog -- Performs a Google search using the lynx text browser in order to avoid tracking
```bash
#!/bin/sh
#Requires the lynx browser
#usage: ./goog [search terms]
lynx -image_links -accept_all_cookies -cookie_file=/dev/null "www.google.com/search?q=$*"
```
