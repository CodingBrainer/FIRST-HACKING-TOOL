@echo off
:: ================================================
:: Advanced Ethical Hacking Suite
:: Author: [Your Name]
:: Date: [Today's Date]
:: DISCLAIMER: This script is provided for educational purposes only.
:: It implements scanning, vulnerability assessment, and brute forcing in full.
:: Use only on networks/systems where you have explicit permission.
:: ================================================

:menu
cls
echo ================================================
echo            ADVANCED ETHICAL HACKING SUITE
echo ================================================
echo.
echo  1.  Display IP Configuration
echo  2.  Display System Information
echo  3.  Display Active Connections (netstat)
echo  4.  Display ARP Cache
echo  5.  Display Routing Table
echo  6.  DNS Lookup
echo  7.  Continuous Ping Test
echo  8.  Traceroute
echo  9.  Basic WiFi Scan (netsh wlan show networks)
echo 10.  List Network Shares
echo 11.  Save IP Configuration to File
echo 12.  Nmap Scan (Advanced Port & Service Detection)
echo 13.  Vulnerability Scan (Nmap Aggressive Mode)
echo 14.  SSH Brute Force Attack (Hydra)
echo 15.  RDP Brute Force Attack (Hydra)
echo 16.  Generate Password List (for Hydra)
echo 17.  Advanced WiFi Scan with Table Formatting (PowerShell)
echo 18.  ARP Network Mapping Scan
echo 19.  Banner Grabbing (Telnet)
echo 20.  Display Firewall Rules
echo 21.  Send Test Email Alert (Blat)
echo 22.  Schedule a Task (schtasks)
echo 23.  List Running Processes
echo 24.  List Windows Services
echo 25.  Ping Sweep (Subnet Scan)
echo 26.  Query Windows Event Logs
echo 27.  Display Open Ports with Process IDs
echo 28.  Display Wireless Interface Information (netsh wlan show interfaces)
echo 29.  List Installed Programs (WMIC)
echo 30.  Check System Uptime
echo 31.  Exit
echo.
set /p option="Select an option (1-31): "

if "%option%"=="1" goto ipconfig
if "%option%"=="2" goto sysinfo
if "%option%"=="3" goto netstat
if "%option%"=="4" goto arpcache
if "%option%"=="5" goto routetable
if "%option%"=="6" goto dnslookup
if "%option%"=="7" goto pingtest
if "%option%"=="8" goto traceroute
if "%option%"=="9" goto wifiscan
if "%option%"=="10" goto netshares
if "%option%"=="11" goto redirectipconfig
if "%option%"=="12" goto nmapscan
if "%option%"=="13" goto vulnscan
if "%option%"=="14" goto sshbruteforce
if "%option%"=="15" goto rdpadv
if "%option%"=="16" goto passgen
if "%option%"=="17" goto extendedwifiscan
if "%option%"=="18" goto arpmap
if "%option%"=="19" goto bannergrab
if "%option%"=="20" goto firewallrules
if "%option%"=="21" goto emailalert
if "%option%"=="22" goto schedules
if "%option%"=="23" goto proc
if "%option%"=="24" goto services
if "%option%"=="25" goto pingsweep
if "%option%"=="26" goto wevt
if "%option%"=="27" goto openports
if "%option%"=="28" goto wirelessinfo
if "%option%"=="29" goto installedprogs
if "%option%"=="30" goto uptime
if "%option%"=="31" goto exit

:ipconfig
cls
echo [*] Displaying IP Configuration:
ipconfig /all
pause
goto menu

:sysinfo
cls
echo [*] Displaying System Information:
systeminfo
pause
goto menu

:netstat
cls
echo [*] Displaying Active Network Connections:
netstat -an
pause
goto menu

:arpcache
cls
echo [*] Displaying ARP Cache:
arp -a
pause
goto menu

:routetable
cls
echo [*] Displaying Routing Table:
route print
pause
goto menu

:dnslookup
cls
set /p domain="Enter domain for DNS lookup (e.g., example.com): "
echo [*] Performing DNS lookup for %domain%
nslookup %domain%
pause
goto menu

:pingtest
cls
set /p target="Enter target IP or domain to ping continuously: "
echo [*] Pinging %target% continuously. Press CTRL+C to stop.
ping %target% -t
pause
goto menu

:traceroute
cls
set /p target="Enter target IP or domain for traceroute: "
echo [*] Running traceroute to %target%
tracert %target%
pause
goto menu

:wifiscan
cls
echo [*] Scanning for WiFi Networks (Basic):
netsh wlan show networks mode=bssid
pause
goto menu

:netshares
cls
echo [*] Displaying Network Shares:
net view
pause
goto menu

:redirectipconfig
cls
echo [*] Saving IP Configuration to file "ipconfig_output.txt"
ipconfig /all > ipconfig_output.txt
echo Output saved to ipconfig_output.txt
pause
goto menu

:nmapscan
cls
echo [*] Running Nmap Scan (Advanced Port & Service Detection)
set /p target="Enter target for Nmap scan: "
nmap -A %target%
pause
goto menu

:vulnscan
cls
echo [*] Running Vulnerability Scan using Nmap Aggressive Mode
set /p target="Enter target for vulnerability scan: "
nmap -A %target%
pause
goto menu

:sshbruteforce
cls
echo [*] Running SSH Brute Force Attack with Hydra
set /p target="Enter target IP for SSH brute force: "
set /p username="Enter SSH username: "
set /p passfile="Enter path to password list file: "
hydra -l %username% -P %passfile% ssh://%target%
pause
goto menu

:rdpadv
cls
echo [*] Running RDP Brute Force Attack with Hydra
set /p target="Enter target IP for RDP brute force: "
set /p username="Enter RDP username: "
set /p passfile="Enter path to password list file: "
hydra -l %username% -P %passfile% rdp://%target%
pause
goto menu

:passgen
cls
echo [*] Generating Password List for Hydra...
echo This will generate 1000 random alphanumeric passwords, each 10 characters long.
powershell -Command "1..1000 | ForEach-Object { -join ((48..57)+(65..90)+(97..122) | Get-Random -Count 10 | ForEach-Object {[char]$_} ) } | Out-File -Encoding ASCII -FilePath passwords.txt"
if exist passwords.txt (
    echo Password list generated and saved to passwords.txt.
) else (
    echo Failed to generate password list.
)
pause
goto menu

:extendedwifiscan
cls
echo [*] Extended WiFi Scan with Table Formatting (PowerShell)
netsh wlan show networks mode=bssid > wifi_scan.txt
powershell -Command "Get-Content .\wifi_scan.txt | Format-Table -AutoSize | Out-String | Write-Host"
del wifi_scan.txt
pause
goto menu

:arpmap
cls
echo [*] Performing ARP Network Mapping Scan...
:: If you have arp-scan installed, you could use it instead of arp -a.
arp -a
pause
goto menu

:bannergrab
cls
echo [*] Banner Grabbing with Telnet
set /p target="Enter target IP: "
set /p port="Enter target port (e.g., 80): "
telnet %target% %port%
pause
goto menu

:firewallrules
cls
echo [*] Displaying Windows Firewall Rules:
netsh advfirewall show allprofiles
pause
goto menu

:emailalert
cls
echo [*] Sending Test Email Alert using Blat
set /p emailRecipient="Enter recipient email address: "
set /p emailSubject="Enter email subject: "
set /p emailBody="Enter email body (single line): "
blat -to %emailRecipient% -subject "%emailSubject%" -body "%emailBody%"
if %errorlevel%==0 (
    echo Email alert sent successfully.
) else (
    echo Failed to send email alert.
)
pause
goto menu

:schedules
cls
echo [*] Scheduling a Task using schtasks.
set /p taskName="Enter Task Name: "
set /p taskCommand="Enter command/path to execute (enclose in quotes if necessary): "
set /p taskSchedule="Enter schedule type (MINUTE, HOURLY, DAILY, WEEKLY, ONCE): "
set /p taskStartTime="Enter start time (HH:MM in 24hr format): "
schtasks /create /tn "%taskName%" /tr %taskCommand% /sc %taskSchedule% /st %taskStartTime%
if %errorlevel%==0 (
    echo Task scheduled successfully.
) else (
    echo Failed to schedule task.
)
pause
goto menu

:proc
cls
echo [*] Listing Running Processes:
tasklist
pause
goto menu

:services
cls
echo [*] Listing Windows Services:
net start
pause
goto menu

:pingsweep
cls
echo [*] Ping Sweep on a Subnet:
set /p subnet="Enter the subnet (e.g., 192.168.1): "
for /L %%i in (1,1,254) do (
    ping -n 1 %subnet%.%%i | find "TTL=" >nul
    if not errorlevel 1 echo %subnet%.%%i is up.
)
pause
goto menu

:wevt
cls
echo [*] Querying Windows System Event Log (last 20 events):
wevtutil qe System /c:20 /f:text
pause
goto menu

:openports
cls
echo [*] Displaying Open Ports with Associated Process IDs:
netstat -ano
pause
goto menu

:wirelessinfo
cls
echo [*] Displaying Wireless Interface Information:
netsh wlan show interfaces
pause
goto menu

:installedprogs
cls
echo [*] Listing Installed Programs:
wmic product get name
pause
goto menu

:uptime
cls
echo [*] Checking System Uptime:
systeminfo | find /I "Boot Time"
pause
goto menu

:exit
cls
echo Exiting Advanced Ethical Hacking Suite.
pause
exit
