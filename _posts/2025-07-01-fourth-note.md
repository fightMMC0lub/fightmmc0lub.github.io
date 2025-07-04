---
layout: default
title: "|--Share Terminal Securely"
date: 2025-07-01
tags: [linux, openbsd, macos]
---

# Share Your Terminal with `tmate`

Sometimes you need to collaborate with someone directly inside your terminal—whether for debugging, pair programming, or just showing something live. `tmate` makes this easy and secure.

## What can do with tmate

**Tmate** is a tool that allows you to share a terminal session with others over SSH or a web URL. It’s fast, simple, and encrypted.

## you need 

- os : Linux, macOS, BSD, or WSL  
- Internet connection  
- `tmate` installed

## install it easy

### On Debian, Ubuntu, or Kali:
```bash
sudo apt install tmate
```
### for macOS
```bash
brew install tmate
```
# after you can run it by *tmate*
# you will see somthing like this :
```bash
ssh session: ssh abcdef@ny.tmate.io
web view: https://tmate.io/t/abcdef
```
- # You can share either the SSH command or the web URL with the person you want to collaborate with.
# They can:
- Use the *SSH* link to connect to your terminal in real-time
- Use the web *URL* to view your terminal in a browser
  
## Official Website: [https://tmate.io](https://tmate.io)

