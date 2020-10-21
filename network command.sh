REMOTE ACCESS REVISITED
-----------------------
LINUX:
-> $ sudo apt-get install openshh-client
-> $ sudo apt-get install openssh-server
-> $ ssh anshika@IPADDRESSE
-> cd Desktop/
-> mkdir Test
-> ls

UNABLE TO RESOLVE A HOSTNAME OR DOMAIN NAME
-------------------------------------------
-> ping www.google.com         2) sudo vim /etc/hosts
-> nslookup www.google.com

APACHE HTTP SERVER
------------------
-> sudo apt-get install apache2 -y

JOINING ACTIVE DIRECTORY DOMAIN
-------------------------------
-> Add-computer -DomainName example.com -server 'dcl' -Restart
-> Get-AdForest
-> Get-AdDomain

SRV ROCKETS
-----------
-> Resolve -DNSName -type 
-> RV -Name -ldap._dcp.dc._msdes.example.com

LINUX
-> sudo apt-get install slapd ldap_utils
-> sudo dpkg-reconfigure slapd

-------------------------------------------

-> ping IPaddresse
->ping domainName
-> ping /?
-> tracert IPaddresse
-> nbtstat -s
-> netstat -a
-> ipconfig /all
-> ipconfig /renew
-> ipconfig /release
-> utilityName /?
-> ipconfig
-> nslookup DomainName        -> Dig (Unix)

TRACE-ROUTE
-> traceroute google.com
-> mtr (Linux,mac,os)      -> pathping (WIN)

TESTING PORT CONNECTIVITY
--------------------------
-> nc google.com 80
-> nc -z -v google.com 80   -> Test-NetConnection google.com

NAME RESOLUTION TOOP
--------------------
-> nslookup (LINUX)
-> coursera.org
-> server 8.8.8.8
-> set typeMx
-> google.com
-. set debug







