# 🛡️ OWASP Top 10 (2021) — Visual Cheat Sheet

| # | OWASP Item | 📝 Simple Definition | 💥 Example Attacks |
|--|-------------|-----------------------|----------------------------|
| 🔓 A01 | **Broken Access Control** | Users can access data or actions they should not | IDOR, Force browsing, Privilege escalation, Authorization bypass, Parameter tampering |
| 🔐 A02 | **Cryptographic Failures** | Sensitive data is not protected properly | Data sniffing, MITM, Weak algorithms (MD5, SHA1, DES), Missing HTTPS/TLS, Hardcoded keys |
| 💉 A03 | **Injection** | Attacker puts code into inputs that gets executed | SQL Injection, Command Injection, LDAP Injection, XPath Injection, XSS |
| 🏗️ A04 | **Insecure Design** | App has no security built into its design | No rate limiting, No access rules, No threat modeling, Logic flaws (buy without pay) |
| ⚙️ A05 | **Security Misconfiguration** | Wrong or unsafe system settings | Default passwords, Exposed debug pages, Directory listing, Leaked error messages, Misconfigured CORS |
| 📦 A06 | **Vulnerable & Outdated Components** | Using old libraries with known bugs | Old jQuery, Apache Struts, OpenSSL, Log4Shell, Supply chain attacks |
| 🪪 A07 | **Identification & Authentication Failures** | Weak login or session controls | Brute force, Credential stuffing, Session hijacking, Session fixation, Weak password policy |
| 🧩 A08 | **Software & Data Integrity Failures** | Trusting updates/data without checking integrity | Tampered updates, Insecure deserialization, Compromised CI/CD, Malicious packages |
| 📉 A09 | **Security Logging & Monitoring Failures** | No alerts or records when attacks happen | Undetected brute force, Undetected privilege escalation, Undetected data theft |
| 🌐 A10 | **Server-Side Request Forgery (SSRF)** | Server makes unsafe requests for attacker | Accessing internal panels, Reading cloud metadata, Port scanning internal network |
