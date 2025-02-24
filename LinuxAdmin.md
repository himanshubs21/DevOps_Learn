# 

## **1. User Management**

### **Task:** Create and manage users and groups.

### **Solution:**

- Create a user: `useradd username`
- Set password: `passwd username`
- Create a group: `groupadd groupname`
- Add user to group: `usermod -aG groupname username`
- List users: `cat /etc/passwd`
- List groups: `cat /etc/group`

---

## **2. File and Directory Management**

### **Task:** Manage files, directories, and permissions.

### **Solution:**

- List files: `ls -lah`
- Copy file: `cp source destination`
- Move file: `mv source destination`
- Delete file: `rm filename`
- Change permissions: `chmod 755 filename`
- Change ownership: `chown user:group filename`

---

## **3. Process Management**

### **Task:** Monitor and manage system processes.

### **Solution:**

- View running processes: `ps aux`
- View processes in real-time: `top` or `htop`
- Kill a process: `kill PID` or `kill -9 PID`
- Check process tree: `pstree`

---

## **4. Disk and Filesystem Management**

### **Task:** Manage disk space and partitions.

### **Solution:**

- Check disk usage: `df -h`
- Check directory size: `du -sh directory`
- List block devices: `lsblk`
- Create a new partition: `fdisk /dev/sdX`
- Mount a filesystem: `mount /dev/sdX /mnt`
- Check filesystem: `fsck /dev/sdX`

---

## **5. Network Configuration**

### **Task:** Manage network settings and troubleshoot connectivity.

### **Solution:**

- Check IP address: `ip a`
- View active connections: `netstat -tulnp`
- Test connectivity: `ping google.com`
- View routing table: `route -n`
- Restart networking service: `systemctl restart networking`

---

## **6. Package Management**

### **Task:** Install, update, and remove software packages.

### **Solution:**

**For Debian-based systems (Ubuntu, Debian):**

- Install package: `apt install package_name`
- Update packages: `apt update && apt upgrade`
- Remove package: `apt remove package_name`

**For RHEL-based systems (CentOS, RHEL):**

- Install package: `yum install package_name`
- Update packages: `yum update`
- Remove package: `yum remove package_name`

---

## **7. System Logs & Monitoring**

### **Task:** Monitor logs and system health.

### **Solution:**

- View system logs: `journalctl -xe`
- View authentication logs: `cat /var/log/auth.log`
- Monitor CPU and memory: `vmstat 1`
- Check memory usage: `free -m`
- Check system uptime: `uptime`

---

## **8. Scheduled Tasks (Cron Jobs)**

### **Task:** Automate tasks with cron.

### **Solution:**

- Edit cron jobs: `crontab -e`
- List scheduled jobs: `crontab -l`
- Example job (run script at midnight): `0 0 * * * /path/to/script.sh`

---

## **9. Firewall Management**

### **Task:** Configure and manage firewall rules.

### **Solution:**

**For UFW (Ubuntu/Debian):**

- Allow port: `ufw allow 22/tcp`
- Deny port: `ufw deny 80/tcp`
- Enable firewall: `ufw enable`
- Check status: `ufw status`

**For Firewalld (RHEL/CentOS):**

- Allow port: `firewall-cmd --permanent --add-port=22/tcp`
- Reload firewall: `firewall-cmd --reload`

---

## **10. Backup & Restore**

### **Task:** Perform system backups and restores.

### **Solution:**

- Create a backup: `tar -czvf backup.tar.gz /path/to/directory`
- Restore backup: `tar -xzvf backup.tar.gz -C /restore/path`
- Backup with rsync: `rsync -av /source/ /destination/`

---

## **11. SSH & Remote Access**

### **Task:** Securely access servers remotely.

### **Solution:**

- Connect via SSH: `ssh user@remote_host`
- Copy files via SSH: `scp file user@remote_host:/path/`
- Secure SSH access:
    - Disable root login: Edit `/etc/ssh/sshd_config` → `PermitRootLogin no`
    - Restart SSH service: `systemctl restart ssh`

---

## **12. Kernel & System Performance Tuning**

### **Task:** Optimize system performance.

### **Solution:**

- Check kernel version: `uname -r`
- Modify sysctl parameters: `sysctl -w net.ipv4.ip_forward=1`
- List loaded modules: `lsmod`
- Check CPU load: `uptime`
- Tune CPU scheduling: `nice -n 10 process_name`

---

## **Final Notes**

- Practice commands regularly.
- Read official documentation (`man command_name`).
- Troubleshoot using system logs.
- Learn shell scripting for automation.

🚀 **Master these tasks to become a proficient Linux Administrator!**
