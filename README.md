# linux-bash-system-monitor
- A Linux system health monitoring project built with Bash scripting that tracks CPU, memory, and disk         usage, logs system metrics, and automates monitoring using Cron-jobs.

# Linux System Health Monitoring Script
- This project is a real-world Linux system health monitoring solution built using **Bash scripting**.  
- It monitors **CPU usage, memory usage, and disk usage**, logs system metrics with timestamps, and supports   automation using **cron jobs**.

## 📌 Features
- Monitor CPU usage
- Monitor Memory usage
- Monitor Disk usage
- Log system health data
- Generate warnings when thresholds are exceeded
- Automate monitoring using cron jobs

## 🛠 Tools & Technologies
- Linux (Ubuntu / CentOS / Parrot OS)
- Bash Scripting
- top, free, df
- awk, grep, sed
- Cron

## 📁 Project Structure
linux-system-health-monitor/
├── monitor.sh
├── system.log
├── README.md
└── screenshots/

## ▶ How to Run the Script

Give execute permission:
  chmod +x monitor.sh
Run manually:
  ./monitor.sh

⏰ Automate Using Cron Job
Edit crontab:
    crontab -e
Run script every 5 minutes:
    */5 * * * * /home/abdullah/linux-system-health-monitor/monitor.sh

🎯 Learning Outcome
Through this project, I learned:
  Linux system resource monitoring
  Bash scripting with functions and conditionals
  Logging system data
  Automating tasks using cron jobs

👤 Maintainer
  Abdullah

Save & exit
    CTRL + O → Enter → CTRL + X
