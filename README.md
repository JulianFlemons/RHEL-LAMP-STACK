# RHEL-LAMP-STACK

# RHEL 10 LAMP Stack Automation

This repository contains a shell script and validation tools to automate the deployment of a LAMP (Linux, Apache, MariaDB, PHP) stack on **Red Hat Enterprise Linux 10**.

The focus of this project is **Systems Administration** and **Infrastructure Security**, specifically managing SELinux policies and service persistence in a modern enterprise environment.

---

## 🛠 Tech Stack
* **OS:** Red Hat Enterprise Linux 10
* **Web Server:** Apache (httpd)
* **Database:** MariaDB
* **Language:** PHP 8.x



---

## 🚀 Getting Started

### 1. Prerequisites
* A system running **RHEL 10**.
* `sudo` privileges.
* Registered with Red Hat Subscription Manager (to access DNF repositories).

### 2. Installation
Run the automated setup script to install all dependencies, configure the firewall, and set SELinux policies:

```bash
# Clone the repository
git clone [https://github.com/JulianFlemons/RHEL-LAMP-STACK.git](https://github.com/JulianFlemons/RHEL-LAMP-STACK.git)
cd RHEL-LAMP-STACK

# Make the script executable
chmod +x setup-lamp.sh

# Run the automation
sudo ./setup-lamp.sh


-- Login: sudo mysql -u root -p
CREATE DATABASE lab_db;
CREATE USER 'jflemons'@'localhost' IDENTIFIED BY 'YOUR_PASSWORD_HERE';
GRANT ALL PRIVILEGES ON lab_db.* TO 'jflemons'@'localhost';
FLUSH PRIVILEGES;
