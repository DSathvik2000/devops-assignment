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
   ```sh
     df -h     #it displays the available disk space for file systems.
   ```
   ![image](https://github.com/user-attachments/assets/14f5ca9b-b4cf-4204-902f-533874efd987)
   ```sh
   du -h       #measures the disk space occupied by files or directories
   ```
   ![image](https://github.com/user-attachments/assets/04e8306a-4cb9-4eab-be43-b6fab819bf65)
- Monitoring this process manually always is a huge task and even there is a chance that we might miss resource-intensive applications. So to prevent this issue we need to setup a scheduled job that takes care 
  of all the monitoring processes and we can also see if there is any application that is unnecessarily using the resources. The script is provided in the above file named 'disk_details.sh'
  
    - To schedule a job that runs every 5 or 10 or any minutes according to our use, we need to specify crontab for the executable file.
    - But before scheduling the job follow these steps:
       - First, make the script file to executable file, to make this use the command:
            ```sh
             chmod +x filename.sh
            ```
       - After making the executable file now run the below command to schedule the job.
           ```sh
           crontab -e
           */5 * * * * /path/to/executable file(.sh file)    #this job runs for every 5 minutes
           ```
           ![WhatsApp Image 2025-03-20 at 18 09 27_e920f89f](https://github.com/user-attachments/assets/cc8d61db-757b-4c6a-8512-f98b9e3d47d2)
           ![WhatsApp Image 2025-03-20 at 18 09 52_0f93d8c6](https://github.com/user-attachments/assets/0fb8c902-dfe4-4ffa-a077-3fa9bfa6024b)
---

## Task-2:  User Management and Access Control
- To set up two new user accounts use the command.
  ```sh
  sudo useradd Sarah
  sudo useradd Mike
  ```
- To set passwords for both the user accounts.
  ```sh
  sudo passwd Sarah
  sudo passwd Mike
  ```
- To set up dedicated directories for each user
  ```sh
  sudo mkdir -p /home/Sarah/workspace
  sudo mkdir -p /home/Mike/workspace
  ```
- To switch to another user, use the following command.
  ```sh
  sudo su - Sarah    #to switch to Sarah user
  sudo su - Mike     #to switch to Mike user
  ```
- To ensure only the respective users can access their directories using appropriate permissions, use the following command.
  ```sh
  #For Sarah
  sudo chown Sarah:Sarah /home/Sarah/workspace
  sudo chmod 700 /home/Sarah/workspace

  #For Mike
  sudo chown Mike:Mike /home/Mike/workspace
  sudo chmod 700 /home/Mike/workspace
  ```
  ![image](https://github.com/user-attachments/assets/6824fe53-fe3f-4e3c-9674-12fcc4b1f7b2)
  ![image](https://github.com/user-attachments/assets/f59104f7-24b9-48b8-8a43-19ef25e01c7b)
- For implementing a password policy to enforce expiration i.e., 30 days and complexity for a password, follow the below steps.
  
  ![WhatsApp Image 2025-03-19 at 21 42 22_4de65b1b](https://github.com/user-attachments/assets/a7c65277-c76c-423d-bd61-7a9408048887)
  ![WhatsApp Image 2025-03-19 at 21 43 33_aac1164e](https://github.com/user-attachments/assets/f379a101-2517-48ef-aa67-296cb7fadeee)
  
  ```sh
  sudo chage -M 30 Sarah
  sudo chage -M 30 Mike 
  ```
  
  ![WhatsApp Image 2025-03-19 at 21 44 51_a46379b4](https://github.com/user-attachments/assets/954e62c7-5855-4a85-8b7f-cf83ebf7743f)
  ![WhatsApp Image 2025-03-19 at 21 45 43_cc0d2d73](https://github.com/user-attachments/assets/10ec7e46-53aa-411d-ad32-9e20c7894698)

- **For Password Complexity**:

- Edit /etc/pam.d/common-password
  ```sh
  sudo nano /etc/pam.d/common-password
  ``` 
- After the file is opened for editing check for the line **password requisite pam_pwquality.so** and modify the line as below.
  ```sh
  password requisite pam_pwquality.so retry=3 minlen=12 dcredit=-1 ucredit=-1 lcredit=-1 ocredit=-1 enforce_for_root
  ```
- Edit /etc/security/pwquality.conf
  ```sh
  sudo nano /etc/security/pwquality.conf
  ```
- After the file is opened for editing modify the lines as below.
  ```sh
  minlen = 12        # Minimum password length (12 characters)
  dcredit = -1       # At least 1 digit
  ucredit = -1       # At least 1 uppercase letter
  lcredit = -1       # At least 1 lowercase letter
  ocredit = -1       # At least 1 special character
  retry = 3          # Allow 3 password attempts before failure
  ```
  
![WhatsApp Image 2025-03-19 at 22 09 45_a0ba1fde](https://github.com/user-attachments/assets/61370853-0276-4d1d-a480-5b768bf17a6c)

---

## Task - 3: Backup Configuration for Web Servers
- Sarah is responsible for managing an Apache web server.
- Mike is responsible for managing a Nginx web server. 
- Both servers require regular backups to a secure location for disaster recovery.
- Make sure you add these users to the **sudoer's** group so that you can execute any commands, to achieve this.
  ```sh
  sudo usermod -aG sudo <username>    # to add user to sudoer's group
  ```
- **For Sarah's and Mike's backup activity**, follow these steps.
   - First login/ switch to the user.
     ```sh
     sudo su - <username>
     ```
   - After logging into the user, create a '.sh' file to perform this activity.
     ```sh
     sudo nano filename.sh
     ```
   - Write the script in this file to complete this activity(the script is in the above files).
   - Make sure to check the owner of the file before making it as executable file.
     ```sh
     ls -l   # command to check the owner of the file
     sudo chown User: User filename   # command to change the ownership of a file from root to user
     ```
   - After changing the ownership of the file, make the file as executable file to do this follow the command used below.
     ```sh
     sudo chmod +x filename
     ```
   - Run the file manually to check if there any errors persist.
     ```sh
     sudo ./filename.sh
     ```
   - If the above command ran successfully add a crontab(for scheduling a job to run at a particular time).
     ```sh
     sudo crontab -e
     0 0 * * 2 /path/to/filename.sh     # as per this line the job runs at 12:00 AM every Tuesday
     ```
   - To check if the job ran successfully, go inside the backup folder and check whether the **log file and .tar.gz** files are created according to the date.
  
     ![image](https://github.com/user-attachments/assets/3035fc01-3fa8-4a36-b2e2-f18cfb2ccab6)
     ![image](https://github.com/user-attachments/assets/f138cb6c-b600-4e5e-a631-b616f23129d3)
---
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

