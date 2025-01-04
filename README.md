# URL Checker

A quick and easy-to-use shell script for checking the status of URLs from a file. Perfect for web admins, developers, or anyone who needs to monitor the availability of multiple links. 🚀

![Shell Script](https://img.shields.io/badge/Shell-Script-blue) ![License](https://img.shields.io/badge/License-MIT-green) ![Status](https://img.shields.io/badge/Status-Stable-brightgreen)

---

## Features
- Check HTTP status codes for a list of URLs.
- Lightweight and easy to use.
- Optionally save results to a log file.

---

## Installation and Usage

```bash
# Clone the repository
git clone https://github.com/manojxshrestha/url-checker.git

# Navigate to the project folder
cd url-checker

# Make the script executable
chmod +x url-checker.sh

# Run the script
./url-checker.sh /path/to/your/urls.txt
```

---

## Options
- `-h`, `--help`  
  Display the help menu with usage instructions.

- `-l`, `--log`  
  Save results to a log file (`check_log.txt`).

---
## Requirements
- `bash` shell
- `curl` command-line tool

---

## Input File Format
The script reads URLs from a text file where each URL is on a new line:
```
https://example.com
https://github.com
https://openai.com
```

---

## Example Output
```text
Checking: https://example.com
HTTP/2 200 

Checking: https://github.com
HTTP/2 200 

Checking: https://openai.com
HTTP/2 200 
```

Made by me [@manojxshrestha](https://github.com/manojxshrestha) ♥️
