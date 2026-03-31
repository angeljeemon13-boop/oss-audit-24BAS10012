# OSS Audit — Mozilla Firefox

## Student Details

**Name:** Angel Rose Jeemon
**Registration Number:** 24BAS10012
**Course:** Open Source Software

---

## Chosen Software

**Mozilla Firefox** — An open-source web browser developed by the Mozilla Foundation, focused on privacy, transparency, and user freedom.

---

## Project Overview

This repository contains the complete submission for the Open Source Audit capstone project. The objective of this project is to analyze an open-source software system not only from a technical perspective, but also from a philosophical and ethical standpoint.

Mozilla Firefox was chosen as the subject of this audit due to its strong stance on open web standards, user privacy, and community-driven development.

The project includes:

* A detailed report covering origin, licensing, ethics, Linux footprint, and ecosystem
* Five shell scripts demonstrating Linux and automation concepts
* Documentation for running and understanding each script

---

## Repository Contents

```
oss-audit-24bas10012/
│── script1_system_identity.sh
│── script2.sh
│── script3.sh
│── script4.sh
│── script5.sh
│── README.md
│── OSS_Audit_Firefox_Angel_Rose_Jeemon.pdf
```

---

## Shell Scripts Description

### Script 1: System Identity Report

Displays key system information such as:

* Linux distribution name
* Kernel version
* Logged-in user
* Home directory
* System uptime
* Current date and time
* Open-source license of the OS

**Concepts used:** Variables, command substitution, echo formatting

---

### Script 2: FOSS Package Inspector

Checks whether Mozilla Firefox is installed on the system and displays package details. It also uses a case statement to print a short description of the software.

**Concepts used:** if-then-else, case statement, dpkg/grep

---

### Script 3: Disk and Permission Auditor

Analyzes important system directories and reports:

* Disk usage
* Permissions
* Owner and group

Also checks for the presence of Firefox configuration directories.

**Concepts used:** for loop, ls, du, awk, conditional statements

---

### Script 4: Log File Analyzer

Reads a log file and:

* Counts occurrences of a keyword (default: "error")
* Displays the last 5 matching lines

**Concepts used:** while loop, if condition, command-line arguments, grep, tail

---

### Script 5: Open Source Manifesto Generator

An interactive script that:

* Takes user input
* Generates a personalized open-source philosophy statement
* Saves output to a text file

**Concepts used:** read, string concatenation, file handling, date command

---

## How to Run the Project

### Prerequisites

* Linux system (Ubuntu/Fedora/WSL recommended)
* Bash shell installed

---

### Steps to Execute

1. Clone the repository:

```bash
git clone https://github.com/angeljeemon13-boop/oss-audit-24bas10012
```

2. Navigate into the directory:

```bash
cd oss-audit-24bas10012
```

3. Give execution permission:

```bash
chmod +x *.sh
```

4. Run the scripts:

```bash
./script1_system_identity.sh
./script2.sh
./script3.sh
./script4.sh testlog.txt error
./script5.sh
```

---

## Script 4 Usage Note

Script 4 requires a log file and keyword as arguments:

```bash
./script4.sh [logfile] [keyword]
```

Example:

```bash
./script4.sh testlog.txt error
```

---

## Dependencies

* Bash (version 4.0 or higher)
* Standard Linux utilities:

  * ls
  * du
  * grep
  * awk
  * cut
  * date
  * whoami

---

## Report

The complete project report is included in this repository as:

**OSS_Audit_Firefox_Angel_Rose_Jeemon.pdf**

---

## Conclusion

This project provided a deeper understanding of open-source software beyond just usage. Mozilla Firefox demonstrates how community-driven development, transparency, and ethical considerations can shape powerful and reliable software.

Through this audit, the importance of open-source philosophy, collaboration, and shared knowledge becomes clear in modern computing.
