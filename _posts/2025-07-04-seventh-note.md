---
layout: default
title: "|--Ghost VM"
date: 2025-07-04
tags: [networking, linux, windows, virtualbox]
---

# Silence the Logs: VirtualBox

VirtualBox is chatty by default — it logs everything.  
Here’s how to shut it up.

### Where logs live

- Global: `~/.config/VirtualBox/`
- Per VM: `~/VirtualBox VMs/YourVM/Logs/`

### Step 1: Clean up the past

First, stop all VirtualBox processes.  
Then delete all `*.log` files in the paths above.

### Step 2: Stop future logging

You’ll need to set a few environment variables to disable logging entirely.  
There are two ways to do it:

#### Option A: Temporary (per session)

```bash
export VBOX_RELEASE_LOG_DEST=nofile
export VBOX_LOG_DEST=nofile
export VBOXSVC_RELEASE_LOG_DEST=nofile
export VBOX_GUI_SELECTORWINDOW_RELEASE_LOG_DEST=nofile
virtualbox
```
#### Option B: Permanent (for all users)
cat >> /etc/environment <<\EOF
VBOX_RELEASE_LOG_DEST=nofile
VBOX_LOG_DEST=nofile
VBOXSVC_RELEASE_LOG_DEST=nofile
VBOX_GUI_SELECTORWINDOW_RELEASE_LOG_DEST=nofile
EOF



