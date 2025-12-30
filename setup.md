nano SETUP.md
# Setup & Usage Instructions
    This document explains how to install required dependencies and run the Linux System Health Monitoring script.

## 🔧 Step 1: Install Dependency

This script requires `bc` for floating-point calculations.
    sudo apt update
    sudo apt install bc -y

▶ Step 2: Give Execute Permission
Make the script executable:
    chmod +x monitor.sh

▶ Step 3: Run Script Manually
Execute the script:
    ./monitor.sh

📄 Step 4: Check Log Output
View system health logs:
    cat system.log

⏰ Step 5: Automate Using Cron Job
Open crontab editor:
    crontab -e

Run script every 5 minutes:
    */5 * * * * /home/abdullah/linux-system-health-monitor/monitor.sh

Verify cron job:
    crontab -l

Save & exit.
