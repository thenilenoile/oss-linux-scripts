

# oss-audit-24BCE10176

**Open Source Software — Capstone Project**  
**Student Name:** Klemens Danny  
**Registration Number:** 24BCE10176  
**Course:** Open Source Software (OSS NGMC)  
**Chosen Software:** Linux Kernel  

---

## What this project is about

This is my capstone submission for the OSS course. I picked the Linux Kernel because honestly it has the most interesting origin story of any software I've read about — a student who just wanted a free OS for his own PC ended up building the thing that now runs most of the internet.

The project has two parts:
- A written report covering the history, licence, ethics, Linux footprint, ecosystem, and a comparison with proprietary alternatives
- Five shell scripts that demonstrate basic Linux and bash scripting skills

---

## Scripts in this repo

| File | What it does |
|------|-------------|
| `script1_system_identity.sh` | Prints a welcome screen with kernel version, distro, user, uptime, date, and licence info |
| `script2_package_inspector.sh` | Checks if a package is installed, shows its details, and prints a note about its open source background |
| `script3_disk_auditor.sh` | Loops through key system directories and reports their permissions and disk usage |
| `script4_log_analyzer.sh` | Reads a log file line by line, counts how many lines match a keyword, shows last 5 matches |
| `script5_manifesto.sh` | Asks you 3 questions and writes a personal open source statement to a text file |

---

## How to run the scripts

### Step 1 — Clone the repo

```bash
git clone https://github.com/thenilenoile/oss-linux-scripts.git
cd oss-linux-scripts

Step 2 — Give execute permission to all scripts

chmod +x script1_system_identity.sh
chmod +x script2_package_inspector.sh
chmod +x script3_disk_auditor.sh
chmod +x script4_log_analyzer.sh
chmod +x script5_manifesto.sh

Step 3 — Run each script
Script 1 — System Identity Report

./script1_system_identity.sh

Script 2 — FOSS Package Inspector

./script2_package_inspector.sh kernel

Script 3 — Disk and Permission Auditor

./script3_disk_auditor.sh

Script 4 — Log File Analyzer

./script4_log_analyzer.sh /var/log/messages error

Script 5 — Open Source Manifesto Generator

./script5_manifesto.sh


Dependencies
All scripts use standard Linux tools:
* bash
* uname, whoami, uptime, date
* rpm (for RPM-based systems)
* ls, du, awk, cut
* grep, tail
* read, cat
No external packages are required.

Notes
* Scripts were written for Linux systems
* Script 2 uses rpm commands
* Script 4 requires a valid log file
* All scripts are commented for clarity

Project Report
The full written report (PDF) is submitted separately on the VITyarthi portal.

References
* kernel.org
* gnu.org/philosophy/free-sw.html
* opensource.org/osd
* linuxcommand.org
* gnu.org/software/bash/manual
* catb.org/~esr/writings/cathedral-bazaar
# oss-linux-scripts
Open Source Software Lab Linux Scripts
