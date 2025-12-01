📦 Automated Backup & Versioning System

A simple Linux-based DevOps project using Shell Script, Cron, GitHub Actions (CI), and Jenkins Pipeline.

🚀 Project Overview

This project automates the process of backing up important files and storing them with timestamps for easy versioning.
It also includes CI pipelines using GitHub Actions and Jenkins, making it suitable as a beginner-friendly SCM / DevOps project.

📁 Folder Structure
.
├── .github/workflows  
├── backups/               # Auto-generated backup files stored here
├── backup.sh              # Main shell script to take backups
├── config.txt             # List of directories/files that need backup
├── backup.log             # Log file for tracking backup runs
├── Jenkinsfile            # Jenkins CI pipeline
└── README.md              # Project documentation

⚙️ Features

Automated file/directory backup using Bash

Timestamp-based versioning (every backup is unique)

Centralized logging (backup.log)

Path configuration through config.txt

Integrated GitHub Actions CI

Integrated Jenkins CI

Beginner-friendly implementation (no JSON, only Shell)

🧩 How It Works

1️⃣ Add the files/directories you want to back up

Edit config.txt and add paths like:

/mnt/d/Projects/Testing

2️⃣ Run the backup script
./backup.sh


This will:
✔ Read paths from config.txt

✔ Create a timestamped tar archive

✔ Save it inside the backups/ folder

✔ Log the run in backup.log

3️⃣ Automate backups using Cron

Example (runs daily at 7:30 PM):

30 19 * * * /mnt/d/Projects/file-backup-versioning/backup.sh

🔄 Continuous Integration (CI)

🟦 GitHub Actions

Located in:

.github/workflows/


The workflow:

Checks if backup.sh is executable

Runs a basic shell test

Prints backup script output

Ensures CI passes for every commit/push

🟧 Jenkins Pipeline

Jenkinsfile includes:

Checkout of repository

Running the backup script

Displaying log output

Simple shell-based build stage

Both pipelines ensure the script is valid, working, and versioned.

📜 Tech Stack Used

Linux (Ubuntu / WSL)

Bash / Shell Scripting

Cron (Task automation)

Git & GitHub

GitHub Actions CI

Jenkins Pipeline

🧰 Skills Demonstrated

Software Configuration Management (SCM)

CI pipeline creation

Bash scripting

Automation of routine tasks

Versioning best practices

Documentation writing (this README)
