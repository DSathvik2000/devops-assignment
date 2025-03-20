# 🚀 System Monitoring, User Management, and Backups for Web Servers

🛠️ This repository mainly consists regarding:
- **System Monitoring Setup**: Configuring a monitoring system to ensure the development environment’s health, performance, and capacity planning.
- **User Management and Access Control**: Setting up user accounts and configuring secure access controls for the new developers.
- **Backup Configuration for Web Servers**: Configuring automated backups for Apache server and Nginx server to ensure data integrity and recovery.

---

## 📌 Table of Contents
- [💻 System Monitoring Setup](#System-Monitoring-Setup)
- [👤 User Management and Access Control](#User-Management-and-Access-Control)
- [💾 Backup Configuration for Web Servers](#Backup-Configuration-for-Web-Servers)
- [🔧 Setup and Requirements](#setup-and-requirements)
- [💻 Usage Instructions](#usage-instructions)
- [🤝 Contributing](#contributing)
- [📜 License](#license)

---

## Task-1:  System Monitoring Setup

- To install and configure monitoring tools using htop to monitor CPU, memory, and process usage.
```sh
sudo apt install htop -y                         # To install htop in Linux
```
- To install and configure monitoring tools using nmon to monitor CPU, memory, and process usage.
```sh
sudo apt install nmon -y                         # To install nmon in Linux
```

### Using htop:
```sh
htop
```
![WhatsApp Image 2025-03-18 at 15 16 48_23e285ff](https://github.com/user-attachments/assets/ebf6d216-6124-410c-a853-185f5bf0f714)
- if we use the command htop we can see the above interface.
- **CPU Usage**:
   - Represented by bars labeled 0, 1, 2, 3, 4, 5, 6, 7 (indicating CPU cores).
- **Memory & Swap Usage**:
   - Mem (Memory) Usage:
       - The horizontal bar labeled Mem shows memory consumption.
       - Text on the right (e.g., 403M/7.46G) indicates 403 MB used out of 7.46 GB.
   - Swap Usage:
       - The Swp bar represents swap memory usage.
       - The text (e.g., 0K/2.00G) indicates 0 KB of swap used out of 2 GB.
- **Process List**:
   - This is the main table displaying running processes.
       - PID: Process ID.
       - USER: User running the process.
       - PRI/NI: Process priority and niceness.
       - VIRT/RES/SHR: Virtual, resident, and shared memory.
       - CPU%: Percentage of CPU used by the process.
       - MEM%: Percentage of memory used by the process.
       - TIME+: Total CPU time consumed.
       - COMMAND: Command used to start the process.
- **System Overview**:
  - **Load Average**:
       -  Shows system load over the last 1, 5, and 15 minutes.
  - **Uptime**:
       - Displays how long the system has been running.
  - **Tasks**:
       - Shows total tasks, threads, and the number of running processes.

### Using nmon:
```sh
nmon
```
![WhatsApp Image 2025-03-18 at 14 45 43_96bf2e60](https://github.com/user-attachments/assets/17210f83-2cab-404e-8b2e-2fd9747da7c2)
- if we use the command nmon we can see the above interface.
- Once inside nmon, press:
     - c → Show CPU usage
     - m → Show Memory usage
     - d → Show Disk usage
     - n → Show Network statistics
     - t → Show Top processes
     - q → Quit nmon
- **Set up disk usage monitoring to track storage availability using df and du**.
    - 

## 🤝 Contributing
🙌 Contributions are welcome! Follow these steps:
1. Fork the repository.
2. Create a new branch:
   ```sh
   git branch new-branch
   ```
3. Commit your changes:
   ```sh
   git commit -m "Commit Message"
   ```
4. Push the code:
   ```sh
   git push origin new-branch
   ```
5. Submit a pull request.

---

## 📜 License
📄 This repository is licensed under the MIT License. See the LICENSE file for details.

