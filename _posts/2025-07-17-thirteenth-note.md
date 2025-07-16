---
layout: default
title: "|--HistoryCollector"
date: 2025-07-17
tags: [data, bashScript]
---

# Browser History Collector (Windows Batch Script)

This script gathers browser history files from the most common browsers on Windows:

- Google Chrome  
- Mozilla Firefox  
- Microsoft Edge

It checks if history files exist and copies them for further analysis.


## Warning

This script is for **educational purposes only**...


## Batch Script

```batch
@echo off
echo Gathering Browser Information...
echo =====================================
echo Checking Installed Browsers...

:: Chrome History and Cookies
echo Google Chrome History:
if exist "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\History" (
  echo History file found for Chrome.
  copy "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\History" chrome_history.db
) else (
  echo Chrome History not found.
)

:: Firefox History and Cookies
echo Mozilla Firefox History:
if exist "%APPDATA%\Mozilla\Firefox\Profiles\" (
  for /d %%d in ("%APPDATA%\Mozilla\Firefox\Profiles\*") do (
    if exist "%%d\places.sqlite" (
      echo History file found for Firefox in profile %%d.
      copy "%%d\places.sqlite" firefox_history.db
    )
  )
) else (
  echo Firefox History not found.
)

:: Edge History and Cookies
echo Microsoft Edge History:
if exist "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\History" (
  echo History file found for Edge.
  copy "%USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\History" edge_history.db
) else (
  echo Edge History not found.
)

echo =====================================
echo Information has been gathered.
pause

```

## How to Save This Script

1. Open **Notepad++/vscode** or any text editor.
2. Paste the script code exactly as it is.
3. Click **File > Save As**.
4. In the "File name" field, enter: history_browser.bat
5. In the "Save as type" field, choose:  **All Files (\*.\*)**
6. Click **Save**.

Now you can double-click the `.bat` file to run it.

## Where to Find the Extracted History Files

After you run the script, the copied history files will appear **in the same folder where the `.bat` file is located**, with the following names:

- `chrome_history.db` — from Google Chrome
- `firefox_history.db` — from Mozilla Firefox
- `edge_history.db` — from Microsoft Edge

