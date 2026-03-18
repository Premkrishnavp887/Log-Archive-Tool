# Log Archive Tool

Project Repository:
https://github.com/Premkrishnavp887/Log-Archive-Tool

---

## Overview

This project is a command-line tool that archives logs by compressing them into `.tar.gz` files and storing them in a separate directory.

It is useful for managing system logs by reducing disk usage while preserving historical logs for future reference. This project demonstrates working with files, directories, and building a simple CLI-based automation tool in Bash.

---

## Requirements

The tool must:

* Run from the command line
* Accept a log directory as an argument
* Compress logs into a `.tar.gz` archive
* Store the archive in a separate directory
* Log the date and time of each archive operation

---

## Features

* Accepts any log directory as input
* Compresses logs into `.tar.gz` format
* Uses timestamp-based naming for archives
* Stores archives in a dedicated directory
* Maintains a log file with archive history

---

## System Requirements

* Linux/Unix-based system
* Bash shell
* `tar` utility

---

## Installation and Setup

### 1. Clone the repository

```bash
git clone https://github.com/Premkrishnavp887/Log-Archive-Tool.git
cd Log-Archive-Tool
```

---

### 2. Make the script executable

```bash
chmod +x log-archive.sh
```

---

### 3. (Optional) Move to system path

```bash
sudo mv log-archive.sh /usr/local/bin/log-archive
```

---

## Usage

Run the tool by providing the log directory as an argument:

```bash
log-archive <log-directory>
```

Example:

```bash
log-archive /var/log
```

---

## Output

* Archives are stored in:

```
~/log-archives/
```

* Example archive file:

```
logs_archive_20240816_100648.tar.gz
```

---

## Logging

Each archive operation is recorded in:

```
~/log-archives/archive.log
```

Example entry:

```
[Fri Aug 16 10:06:48 IST 2024] Archived /var/log -> /home/user/log-archives/logs_archive_20240816_100648.tar.gz
```

---

## Automation

You can automate the script using cron.

Open crontab:

```bash
crontab -e
```

Run daily at midnight:

```bash
0 0 * * * log-archive /var/log
```

---

## Future Enhancements

* Email notifications after archiving
* Upload archives to remote servers or cloud storage
* Automatic deletion of old archives
* Support for configurable archive locations
* Integration with monitoring tools

---

## Use Cases

* System log maintenance
* Disk space management
* Backup automation
* DevOps and system administration tasks

---

## License

MIT License

---

## Author

Prem Krishna
