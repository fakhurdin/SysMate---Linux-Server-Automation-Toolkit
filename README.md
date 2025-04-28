# **SysMate - Linux Server Automation Toolkit**

![GitHub repo size](https://img.shields.io/github/repo-size/fakhurdin/SysMate---Linux-Server-Automation-Toolkit)
![GitHub stars](https://img.shields.io/github/stars/fakhurdin/SysMate---Linux-Server-Automation-Toolkit)
![GitHub license](https://img.shields.io/github/license/fakhurdin/SysMate---Linux-Server-Automation-Toolkit)

> **Automate and streamline your Linux server setup with professional Bash scripts.**

---

## Table of Contents

- [About](#about)
- [Features](#features)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage Guide](#usage-guide)
- [Requirements](#requirements)
- [Contributing](#contributing)
- [FAQ](#faq)
- [License](#license)

---

## About

**SysMate** is an open-source toolkit for automating common tasks on Linux servers. It enables system administrators and DevOps engineers to automate essential tasks such as package installations, user management, system updates, firewall configuration, and backups.  
The toolkit is designed to streamline routine server management and improve efficiency.

---

## Features

- **Install Essential Packages**  
  Automates the installation of commonly used packages on a fresh Linux setup.
  
- **System Updates and Upgrades**  
  Keeps your system up-to-date with the latest security patches and software upgrades.
  
- **User and Group Management**  
  Easily create users, assign groups, and manage access permissions.

- **Firewall Configuration**  
  Automatically configure the UFW firewall with secure rules for SSH, HTTP, and HTTPS.

- **Automated Backups**  
  Set up daily backups and restore system data from specified directories.

- **Cronjob Management**  
  Schedule and automate tasks such as backups and updates using cron.

- **Simple and Extensible**  
  Easily extendable scripts that can be customized based on individual needs.

---

## Project Structure

```bash
sysmate-linux-automation/
├── README.md
├── scripts/
│   ├── install_packages.sh
│   ├── system_update.sh
│   ├── user_management.sh
│   ├── firewall_setup.sh
│   └── backup_script.sh
├── crontab/
│   └── backup_daily.cron
```

---

## Installation

1. **Clone the Repository**

```bash
git clone https://github.com/fakhurdin/SysMate---Linux-Server-Automation-Toolkit.git
cd SysMate---Linux-Server-Automation-Toolkit
```

2. **Make the Scripts Executable**

```bash
chmod +x scripts/*.sh
```

3. **Set Up Cronjobs (Optional)**

If you'd like to automate the backup process daily, install the cronjob:

```bash
crontab crontab/backup_daily.cron
```

---

## Usage Guide

Here’s how you can use each of the available scripts:

- **Install Essential Packages**

  ```bash
  ./scripts/install_packages.sh
  ```

- **Update and Upgrade System**

  ```bash
  ./scripts/system_update.sh
  ```

- **Manage Users and Groups**

  ```bash
  ./scripts/user_management.sh
  ```

  (This script will prompt you to input user details and assign them to groups.)

- **Set Up UFW Firewall**

  ```bash
  ./scripts/firewall_setup.sh
  ```

- **Back Up Your System**

  ```bash
  ./scripts/backup_script.sh
  ```

  (To automate daily backups, make sure the cronjob is installed.)

---

## Requirements

- A Linux system (Ubuntu, Debian, CentOS, or similar)
- Bash 4.0 or higher
- Sudo privileges to install packages and manage users
- Internet connection (for package installations)

---

## Contributing

We welcome contributions from everyone! Here's how you can contribute:

1. Fork the repository
2. Create a new branch:

    ```bash
    git checkout -b feature/your-feature
    ```

3. Make your changes
4. Commit your changes:

    ```bash
    git commit -am 'Add new feature'
    ```

5. Push to your branch:

    ```bash
    git push origin feature/your-feature
    ```

6. Open a pull request with a description of your changes

---

## FAQ

**Q: Can I add my own packages to install?**  
**A:** Yes! Modify the `PACKAGES` variable inside the `install_packages.sh` script.

**Q: Is this script only for Ubuntu/Debian?**  
**A:** The scripts are optimized for Ubuntu and Debian systems. For CentOS or RHEL, you may need to adjust package managers (`yum`/`dnf`).

**Q: How do I change the backup location?**  
**A:** Modify the `BACKUP_DIR` and `SOURCE_DIRS` variables inside `backup_script.sh`.

**Q: Can I schedule updates and backups automatically?**  
**A:** Yes, by configuring the provided cronjob (`crontab/backup_daily.cron`).

---

## License

This project is licensed under the [MIT License](LICENSE).

---
