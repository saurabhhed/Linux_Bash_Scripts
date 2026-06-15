# 🚀 Linux Scripts

A powerful collection of Linux automation, administration, and troubleshooting scripts designed to simplify system management, optimize workflows, and improve operational efficiency.

## ⚡ Overview

This repository is built for **System Administrators, DevOps Engineers, and Linux Enthusiasts** who want to automate repetitive tasks, monitor system health, and streamline infrastructure operations.

From backups and user management to resource monitoring and security audits, these scripts provide practical solutions for real-world Linux administration.

---

## 🔥 Features

✔️ Automate daily system tasks
✔️ Monitor CPU, RAM, Disk, and Processes
✔️ Manage users and permissions efficiently
✔️ Perform backups and restore operations
✔️ Clean logs and optimize storage
✔️ Diagnose network connectivity issues
✔️ Check system security and failed login attempts
✔️ Schedule tasks with cron automation
✔️ Generate system health reports

---

## 📂 Repository Structure

```bash
Linux_script/
├── backup.sh               # Backup files/directories
├── restore.sh              # Restore backups
├── disk_monitor.sh         # Monitor disk usage
├── cpu_monitor.sh          # Check CPU utilization
├── memory_monitor.sh       # Monitor RAM usage
├── process_monitor.sh      # Top running processes
├── user_management.sh      # Create/delete/manage users
├── permission_manager.sh   # File permission automation
├── log_cleanup.sh          # Clean old logs
├── system_update.sh        # Update and upgrade system packages
├── package_checker.sh      # Check installed packages
├── network_check.sh        # Check connectivity and ping test
├── port_scanner.sh         # Scan open ports
├── service_monitor.sh      # Monitor service status
├── security_audit.sh       # Basic security checks
├── failed_login_checker.sh # Detect failed login attempts
├── cron_setup.sh           # Automate cron job setup
├── uptime_report.sh        # System uptime and load
├── system_info.sh          # Detailed system information
└── README.md
```

---

## 🛠️ Tech Stack

* **Bash Scripting**
* **Linux CLI Tools**
* **Cron Jobs**
* **Systemd Services**
* **Networking Utilities**
* **Log Management**
* **System Monitoring Tools**

---

## 📋 Script Categories

### 🖥️ System Administration

Scripts to manage users, permissions, services, and package installations.

### 📊 Monitoring

Real-time CPU, RAM, Disk, and Process monitoring.

### 💾 Backup & Recovery

Automate backups and restore system files.

### 🌐 Networking

Connectivity checks, port scans, and DNS troubleshooting.

### 🔒 Security

Audit system security, monitor login attempts, and check vulnerabilities.

### 🧹 Maintenance

Log cleanup, package updates, and storage optimization.

---

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/your-username/Linux_script.git
```

### Navigate to the directory

```bash
cd Linux_script
```

### Give execution permissions

```bash
chmod +x *.sh
```

### Run any script

```bash
./script_name.sh
```

Example:

```bash
./disk_monitor.sh
```

---

## ⏰ Automating with Cron

Run scripts automatically at scheduled times:

Example:

```bash
crontab -e
```

Add:

```bash
0 2 * * * /home/user/Linux_script/backup.sh
```

This will run the backup script every day at **2:00 AM**.

---

## 🎯 Use Cases

* Automating server maintenance
* Monitoring production servers
* Creating backup strategies
* Troubleshooting Linux systems
* Managing users and access control
* Improving system security
* Learning Bash scripting and Linux automation

---

## 🤝 Contribution

Contributions are welcome.

1. Fork this repository
2. Create your feature branch
3. Commit your changes
4. Push to your branch
5. Open a Pull Request

---

## 📜 License

This project is open-source and available under the **MIT License**.

---

## 🌟 Future Enhancements

* Docker management scripts
* Kubernetes helper scripts
* Cloud automation (AWS/GCP/Azure)
* Advanced monitoring integrations
* Log analysis tools

---

⚡ **Automate. Monitor. Secure. Optimize.**
🐧 Built for Linux lovers, SysAdmins, and DevOps engineers.
