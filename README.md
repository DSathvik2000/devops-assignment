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

3. **Checkout to the development branch**: `dev`
   ```sh
   git checkout dev    # to checkout to dev branch
   ```

4. **Create a file named Calculator.py and add simple calculator code in it 

5. **Check the status of the branch whether git is tracking the modified changes, if not make them `tracked`:
   ```sh
   git status   # to check the files are being tracked by git before pushing
   git add .    # command to make git track the changes for the file
   ```

6. **Now `commit` the changes and push the changes:
   ```sh
   git commit -m "Commit message"   # command to commit the changes
   git push origin dev  # to push changes to dev branch
   ```

7. ** Merge the changes to `main` branch and make a release version out of it 
   ```sh
   git checkout main  
   git merge dev     
   git tag v1.0
   git push origin main --tags
   ```
   --![image](https://github.com/user-attachments/assets/58ea9d16-1d70-4b3d-a2ad-e68f4faef784)

8. **Create a new feature branch for square root (`feature/sqrt`) and checkout to the branch**:
   ```sh
   git branch feature/sqrt
   git checkout feature/sqrt
   ```
9. Add the `sqrt` code in the calculator.py file.

10. Bug Fix (Divide Function): A bug has been reported in `main` branch in which the application should handle `division` by zero, so checkout to `dev` branch while keeping the changes in `feature/sqrt`, to achieve this follow these steps.
   ```sh
   git stash     # to save changes temporarily and checking out to different branches
   git checkout dev     # checkout dev branch and fix the bug that causing issue     
   ```

11. After fixing the bug in `dev` branch test it throughly and if the bug is fixed, push the changes to `dev` branch 
  ```sh
    python calculator.py   # run the application and make sure the bug is fixed
    git add .
    git commit -m "Bug has been fixed"
    git push origin dev
  ```

12. Making sure the bug is fixed now, create a pull request to merge these changes into `main` branch to keep in sync with the updated code. 
 ![image](https://github.com/user-attachments/assets/aebc0c95-5a99-47fa-b6d6-4b68dda568d7)

13. Now chekout to `featur/sqrt` branch and bring back the stashed changes to achieve this follow these steps
   ```sh
    git stash list   # to see the stashed changes list
    git stash apply  # to bring back the latest/recent most stashed changes
    git stash apply stash@{stash number}  # to bring back the particular stashed change  
   ```

14. Merge these changes into `dev` branch.
![image](https://github.com/user-attachments/assets/2320b3d8-d0f2-404d-bf79-3502fb9a5bee)

15. After successful testing done in `dev` branch merge them in `main` branch and create a version of `v2.0`.
   ```sh
   git tag v2.0
   git push origin main --tags
  ```
![image](https://github.com/user-attachments/assets/00e8ab10-2f98-4b9e-a89a-594d6201b4bd)

---

## 💾 Git LFS for Large Files Storage  

### 🔹 Steps to Implement Git LFS:
1. **Install Git LFS**:
   ```sh
   git lfs install
   ```
2. **Track large files (e.g., files over 200MB)**:
   ```sh
   git lfs track "*.bin"
   ```
3. **Create an `lfs` branch**:
   ```sh
   git checkout -b lfs
   ```
4. **Add and commit large files**:
   ```sh
   git add largefile.bin
   git commit -m "Added large binary file with Git LFS"
   git push origin lfs
   ```
5. **Clone and verify on another machine**:
   ```sh
   git clone https://github.com/DSathvik2000/git_assignment_HeroVired.git
   ```
 ![WhatsApp Image 2025-02-27 at 21 09 20_8d00f4ed](https://github.com/user-attachments/assets/c65c8ffa-fba1-4fda-a496-3071dcdbb0c3)
 ![WhatsApp Image 2025-02-27 at 21 09 44_9a752e33](https://github.com/user-attachments/assets/73495176-b7d5-4822-bb6e-454350e219c4)


---

## 🔢 Geometry Calculator

### 🔹 Steps to Implement Circle & Rectangle Area Calculation:
1. Create a new branch `geometry-calculator`
    ```sh
     git branch geometry-calculator
     git checkout geometry-calculator
    ```
2. Create separate feature branches for circle (`feature/circle-area`) and rectangle (`feature/rectangle-area`) and stash the changes before commiting
   ```sh
    git branch feature/circle-area
    git stash
    git branch feature/rectangle-area
    git stash
   ```
3. Switch back to `Circle-Area` branch and bring back the stashed changes by using the command
   ```sh
    git checkout feature/circle-area
    git stash apply
   ```
4. Now complete the circle-area logic and push the changes
   ```sh
    git status
    git add .
    git commit -m "Logic added for feature/circle-area"
    git push origin feature/circle-area
   ```
5. Checkout to `feature/rectangle-area` and bring back the stashed changes.
   ```sh
    git checkout feature/rectangle-area
    git stash apply
   ```
7.  Complete the logic of rectangle-area and push the changes.
   ```sh
    git status
    git add .
    git commit -m "Logic added for feature/rectangle-area"
    git push origin feature/rectangle-area
   ```
8. Create pull requests to merge both the branches to `dev`
    ![image](https://github.com/user-attachments/assets/77c47cbe-d846-4a1d-b17e-e668124c56cd)
    ![image](https://github.com/user-attachments/assets/4c2502c5-5c87-4462-839f-1d962547cde0)

9. Check the changes once again in `dev` branch and create a pull request to merge these changes to `main` branch
   ![image](https://github.com/user-attachments/assets/cb958bba-3605-490c-be8a-cd2ddf159173)

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

