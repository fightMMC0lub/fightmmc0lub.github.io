---
layout: default
title: "|-- Protect your Linux C0"
date: 2026-02-13
tags: [networking]
---

# Protect your Linux computer

If you use Linux, you may have heard the myth that it is more secure than Windows. This is not necessarily true. Security depends on a combination of how we use our devices and their own software, which can be found to have vulnerabilities at any time. While most malware targets more widespread operating systems like Windows or Android, you can still get malware as a Linux user if, for example, you click on an infected link or open a malicious attachment.

Follow the steps in this guide to make your device more secure. Get in the habit of checking these settings from time to time to make sure nothing has changed.
---

## If you have just decided to switch to Linux

- Follow the official Ubuntu installation guide.
- Consider encrypting your whole device by choosing “Erase disk and install Ubuntu” and enabling “Use LVM and encryption” during disk setup.
- Choose a strong disk passphrase.
- When creating your login details, set a strong passphrase and keep “Require my password to log in” enabled.

Why:
If your device is confiscated or stolen, encryption and a strong passphrase protect your sensitive files.

---

## Use the latest version of your operating system

- Update from a trusted internet connection.
- Restart when prompted after updates.
- Keep checking for updates until none remain.
- Use supported Ubuntu LTS versions.
- Upgrade when necessary.

Why:
New vulnerabilities are discovered every day. Updates fix these vulnerabilities.

---

## Regularly update all installed apps

- Enable automatic package updates.

---

## Use apps from trusted sources

- Install software using Ubuntu Software.
- Only install apps from official repositories or official developer websites.

Why:
Untrusted sources may include malicious software.

---

## Remove apps that you do not need

- Uninstall unused applications.

Why:
Fewer apps reduce your attack surface.

---

## Check app permissions and connected accounts

- Review permissions in Settings > Applications.
- Remove unused online accounts.
- Disable unnecessary access to services.

Why:
Apps with access to camera, microphone, or location can leak sensitive data.

---

## Turn off location and wipe history

- Disable location services when not needed.
- Clear location history regularly.

Why:
Location history can reveal where you have been and who you met.

---

## Create separate user accounts

- Create one admin account.
- Use a standard account for daily work.
- Only use admin for system changes.

Why:
Limits damage if malware infects your device.

---

## Remove unneeded users

- Delete accounts you do not use.
- Check administrative privileges.

Why:
Reduces attack surface.

---

## Protect your account with a strong passphrase

- Use a passphrase longer than 16 characters.

Why:
Short passwords can be guessed or brute-forced.

---

## Set your screen to sleep and lock

- Set auto-lock to 1–5 minutes.
- Avoid fingerprint or face unlock.

Why:
Biometrics can be forced. A passphrase is safer.

---

## Control lock screen notifications

- Hide notifications on lock screen.

Why:
Notifications can reveal sensitive information.

---

## Use a privacy filter

- Consider a physical screen privacy filter.

Why:
Prevents shoulder surfing attacks.

---

## Use a camera cover

- Cover your webcam when not in use.
- Consider disabling camera access if advanced user.

Why:
Malware can activate your camera without your knowledge.

---

## Turn off unused connectivity

- Turn off WiFi and Bluetooth when not needed.
- Use Airplane mode when appropriate.
- Power off device at night.

Why:
Wireless connections can be exploited.

---

## Clear saved WiFi networks

- Delete old networks.
- Disable automatic connection.
- Store credentials in a password manager instead.

Why:
Saved networks can be used to fingerprint your device.

---

## Turn off sharing features

- Disable file, media, Bluetooth, and desktop sharing if not needed.

Why:
Sharing services can expose files to attackers.

---

## Use a firewall

- Use Gufw.
- Set Incoming: Deny.
- Set Outgoing: Allow.

Why:
Firewalls block unwanted network connections.

