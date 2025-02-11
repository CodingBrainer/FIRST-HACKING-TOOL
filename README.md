# FIRST-HACKING-TOOL

Advanced Ethical Hacking Suite (Batch Script)
==============================================

Overview:
---------
This batch script demonstrates a comprehensive set of ethical hacking,
vulnerability assessment, and brute forcing techniques using Windows
built-in commands and external tools. Unlike earlier “demo” versions, this
script implements live functionality to showcase the full capability of
the tool when used in authorized environments. The tool demonstrates how
human expertise and AI/automation can team up to keep the internet safe.

Features:
---------
Basic Features:
  • Display IP Configuration, System Information, Active Connections, ARP Cache,
    Routing Table, DNS Lookup, Continuous Ping, Traceroute, Basic WiFi Scan,
    Network Shares, and saving outputs.
Advanced Features:
  • Active scanning with Nmap (advanced port/service detection and vulnerability scanning)
  • SSH and RDP brute forcing using Hydra (live commands)
  • Password list generation (via PowerShell) for brute forcing
  • Advanced WiFi scanning with extended output formatting (via PowerShell)
  • ARP network mapping scan
  • Banner grabbing using Telnet
  • Displaying Windows firewall rules
  • Sending test email alerts using Blat
  • Scheduling tasks using schtasks
  • Listing running processes and Windows services
  • Ping sweep of a subnet
  • Querying Windows event logs and displaying open ports with PIDs
  • Displaying wireless interface information
  • Listing installed programs via WMIC
  • Checking system uptime

Usage:
------
1. Preparation:
   - Run this script with administrative privileges.
   - Install and configure required external tools (Nmap, Hydra, Blat, arp-scan, etc.).
   - Review and customize the script as needed for your environment.
2. Execution:
   - Save the file as "ethical_hacking_suite.bat".
   - Right-click and select "Run as administrator".
   - Use the interactive menu to select the desired function.
   - The "Exit" option is the last menu item.
3. Important:
   - Use only on networks and systems for which you have explicit authorization.
   - This script is intended for educational purposes and portfolio demonstration.
   - Brute forcing commands are executed live; ensure that you are testing in a controlled environment.
   - The password generator creates a file ("passwords.txt") that Hydra can use.

License:
--------
This project is provided for educational purposes and as a portfolio demonstration.
Use and modify it at your own risk.

Happy coding and ethical hacking! - CODINGBRAINER - PROPERTY
