# 🐧 User Creation Bash Script

This repository contains a **Bash script** to create new Linux users with automated password assignment and enforced password reset on first login.  
It is useful for system administrators who want a quick way to onboard new users securely.

---

## ✨ Features
- ✅ Ensures the script is run as **root/sudo**.  
- ✅ Accepts a **username** and optional **comment** (like full name or role).  
- ✅ Generates a **random password** automatically.  
- ✅ Creates the user with a **home directory**.  
- ✅ Sets the generated password and forces a reset on first login.  
- ✅ Displays the new user’s details (username, password, hostname).  

---

## 📌 Usage

### 1. Clone the repository
```bash
git clone git@github.com:mohdshuaib42/User-Creation-Bash-Script-.git
cd User-Creation-Bash-Script-
