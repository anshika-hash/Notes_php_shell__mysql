VIEWING USER AND GROUP INFO(WIN.)
-> Get-LocalUser
-> Get-LocalGroup
-> Get-LocalGroupMember Administrator

LINUX.
-> cat /etc/sudors
-> sudo cat /etc/sudoers
-> sudo su -
-> exit
-> cat/etc/group
-> cat /etc/passwd
------------------------------------
DISPLAYING FILE CONTENT
-> cat .\important_document.txt
-> more \arge_document.txt
-> cat fruit.txt -Head 10
-> cat fruit.txt -Tail 10

LINUX
-> less .\important_document.txt
-> head fruit.txt
-> head fruit.txt
-> nano myfile

WIN -> start notepad hello.txt
-------------------------------------
WINDOW POWERSHELL
-> Get-Alias ls
-> Get-childItem
-> ls C:\
//Get-help is used for powershell command like Get-Help ls,and /? is used for other command like dir such as dir /?
------------------------------------------
SEARCHING WITHIN FILES.
->select-string cow farm_animals.txt
->select-string cow *.txt
//searching within dir. -filter parameter will filter the result for file names that match a pattern .exe is the file extension for executable in window.
-> ls 'C:\Program files\' -Recurse -filter *.exe

LINUX
-> grep cow farm_animals.txt
-> grep cow *_animals.txt

Passsword:ComputerManagement->Local users and group-> users->Rightclick->Properties->
-> net user anshika 'some_password'       or  -> net user anshika *
-> net user tyagi /logon password change:yes

LINUX
-> passwd anshika
-> sudo passwd -e tyagi
// adding and removing users
-> sudo userdel anshika
-> sudo useradd anshika
---------------------------------------------

FILE PERMISSION
-> icacls

LINUX
-> ls -l ~/my_file
-> _rwxrw_r_ _

MODIFY PERMISSION
--------------------------------
folder right click->properties->security->edit
-> icacls 'C:\vacation pictures' /grant 'Everyone:(OI)(CI)(R)'
-> icacls 'C:\vacation pictures'

Guest users: this is a special type of user that allows to use the computer without a password.
-> icacls 'C:\vacation pictures' /grant 'Authenticated Users:(OI)(CI)(R)'
-> icacls 'C:\vacation pictures' /remove Everyone
-> icacls 'C:\vacation pictures'

LINUX
* the owner which is denoted by 'u'
* the group the files belong to,which is denoted by a 'g'
* the others users, which is denoted by an 'o'
-> ls -l my_folder
-> chmod u+x my_folder
-> ls -l my_folder
-> chmod u-x my_folder
-> ls -l my_folder

to add more than one permission
-> chmod u+rx my_folder
-> ls -l my_folder
-> chmod ugo+r my_folder
* 4 for read or r                * 7 for owner permission
* 2 for write w                  * 5 for group permission
* 1 for exeute or x              * 4 for all other users.
-> chmod 754 my_folder
-> ls -l my_folder

CHANGE THE OWNER OF THE FILE
-> sudo chown anshika my_folder
-> ls -l my_folder
-> sudo chgrp best_group_ever my_folder
-> ls -l my_folder

WD-: Create files/write data
AD-: create folder/Append data
S-: synchronize

SIMPLE PERMISSION
-----------------
simple permission are actually sets of special permission
-> icals C:\windows\Temp
-> mkdir C:\windows\Temp
-> icals C:\windows\Tempexamples >> icacls.txt
-> cat .\icacls.txt

LINUX
Set UID-: we can enable files to be run by the permission owner of the file.
set GID-:this allows run a file as a member of a file group.
sticky bit:- sticky bits file and folder down it makes any can write to a file or folder but they can't actually delete anything.
t-: this means that every can add and modify files in temp directory but only root and owner can delete.
-> passwd
-> ls -l /etc/shadow (it is run by the gp)
-> ls -l /user/bin/passwd
-> sudo chmod u+s my_folder
-> sudo chmod 47755 my_foler
-> ls -l my_folder
-> ls -l /usr/bin/wall
-> sudo chmod 2755 my_folder
-> ls -l my_folder
-> ls -ld /tmp
-> sudo chmod +t my_folder/  or sudo chmod 1755 my_folder/
-> ls -l my_folder/
-> ls -ld my_folder/
---------------------------------------
find packages:
Sysinternals packages: this released by the microsoft this help to troubleshoot problem => PackageManagement
-> Find-Package sysinternals -IncludeDependencies
-> Register-PackageSourse -Name chocolately -ProviderName chocolatey -Location http://chocalatey.org/api/v2
-> Get-PackageSource

apt:- advance package tool package manager for ubuntu o.s
Package Manager make sure that the process of s/w installation,removal,update and dependency management is an easy an automatic as possible
*SSCM
*Puppet
-> Install-Package -Name sysinternals
-> y
-> Get-Package -Name sysinternals
-> y
-> Get-Package -name sysinternals
-> Uninstall-Package -Name sysinternals

LINUX
-> sudo dpkg -i google_chrome_stable_current_amd64.deb
Package Manager: come with the works to make Package installation and removal easier,including installing Package dependencies
-> sudo apt install gimp
-> y
-> sudo apt remove gimp
-> y
-> cat /etc/apt/source.list

PPA : A personal package archive is a s/w for uploading source package to be built and published as an advanced packagging tool (APT) repository by launchpad.
-> sudo apt update
-> sudo apt upgrade

Underneath the hood.
Process Monitoring
Orca.exe
SDK +> s/w dev. kit.

Linux:
ls -l floppy\ App/
set_script:- how to install package.
Instruction condition: compile floppy app code.
2) copy binery to bin directory
3) create a folder.

ADDING AND REMOVING USERS:
--------------------------
-> net user ansika */add
-> Get-Local User
-> net user anshika    //logon password change:yes

SOFTWARE PACKAGES:
-----------------
Executable file:- contain instruction for a computer to execute when they are run.
ex: copy this file from here to here, install the program these operation also include text or computer code.
MS[Microsoft install packages]: Used to guide a program called the windows installer in the installation,maintenance and removal of program on the window o.s.
APEX:
-> C:\Users\anshika\Desktop\hello.exe

LINUX
Debian (dpkg)
pagaged as a deb file for Debian.
-> sudo -i atom-amd64.deb
-> sudo dpkg -r atom          \\remove
list of dpkg you have installed in your machine.
-> dpkg -l
-> sudo dpkg -i atom-amd64.deb
-> dpkg -l | group atom

ARCHIVES:
---------
Package archive:- the core or source software files that are compressed into one file .tar,.zip,.rar 7 zip open source software.
-> compress-Archive -Path C:\Users\anshika\desktop\coolfiles ~\Desktop\Cool Archives.zip

LINUX:
To extract a file using 7zip,use the command 7z and the flag e for extract and then the file you want to extract
-> 7z e my-Archives.tar
-> ls

WIN PACKAGE DEPENDENCIES
-------------------------
counting on other piece of software to make a application work since one bit of code depends on another, in other to work.
library: A way to package of useful code that someone else wrote.
Dynamic Link Library[DLL]

MSI:- Window installer how put together.
side-by-side Assemblies[SxS]
C:\Windows\winSxS [Manifest] this tells to windows to load the appropriate library from the SxS folder.

ADD PASSWORD
------------
-> net user anshika password /add 
-> net user anshika /del
-> Get-localUser anshika

DEVICE AND DRIVE MANAGEMENT [LINUX]
---------------------------
-> ls -l /dev
character device: like a keyword or a mouse, transmit data character by character.
Block device:- like USB Drives,Hard drives and CDROMs, transfer block of data a data block is just a unit of data storage.
- regular files
d directory
c character devices
B block devices
fewfiles => /dev/sda or sba             //sda-: it means that devices detected by computer first.
mass storage devices like HD, memory stick
kernal module: if a device have not built in kernal.

WIN o.s updates
---------------
security patch: software that's meant to fix up a security hole. the windows update client service run the background and install update for your o.s

KERNAL VERSION[LINUX]
-> uname -r
-> sudo apt update
-> sudo apt full-upgrade

REVIEW OF FILESYSTEM
--------------------
used to keep track of files and file storage on a disk without file system o.s can't organized file like [USB].
WIN - NTFS file system
ubuntu - ext4

NTFS storage device can work on both but ext4 will be work on ubuntu.
FAT 32 can read and write data from window,linux,mac os      
4 GB max file size.
32 GB max file system.


FILE SYSTEM
-----------
add file system into a disk
Partition table: tells the os how the disk is partitioned 
MBR - Master Boot Record
GUID - Partition table (GPT)  2TB > volume size, 1 type partition, unlimited partition
vol. sixe < 2 TB
more than one partition 

WIN Disk patitioning and formatting a file system.
--------------------------------------------------
Disk management
-> Diskpart
cmd prompt -> list disk
-> select disk 1
-> clean
-> create partition primary
-> select partition 1
-> active
-> format FS=NTFS label=my-thumb-drive quick


LINUX
-> sudo parted -l
-> sudo parted /dev/sdb
-> print
-> mklabel gpt
-> print
-> mkpart primary ext4 1MiB 5GiB
-> print
 format
 -> quit
 -> sudo mkfs -t ext4 /dev/sdb1
 -> sudo parted -l
 
 WIN mounting and unmounting a file system
 ------------------------------------------
 making something accessible to the computer,like a fiesystem or a harddidk
 
 LINUX:-
 -> cd /dev/sdb  //not a dir.
 -> sudo parted -l
 -> sudo mount /dev/sdb1  /my_usb/
 
 unmount
 -------
 -> sudo unmount /dev/sdb1
 -> cat /etc/ fstab
 UUID
 -> sudo blkid
 
 WIN : Swap
 ----------
 Virtual Memory:- How our os provides memory available in our computer(like RAM) to the application that run on the computer.
 Memory Manager: (Virtual to Physical addresse mapping) to handle virtual memory page are stored in root hidden file pagefile.sys
 
 LINUX: the dedecated area of the harddisk used for virtual memory.
 -> sudo parted /dev/sdb
 -> print
 -> mkpart primary linux_swap 5 GBiB 100%
 -> print
 -> quick 
 -> sudo mkswap /dev/sdb2
 -> sudo swapon /dev/sdb2
 
 WIN FILES:
 ----------
 Master file table (MFT)
 NTFS - MFT(file name, timestamp, permission, compression, location, etc) MFT have file racked no. this is the index of the files entery in the MFT.
  
  Parent process is shell and child is the notepad
  -------------------------------------------------
  -> taskkill (to stop the process)
  // process id (PID) which process would to like start.
  -> taskkill /pid 5856
  
  LINUX
  -> less /etc/some_file(parent process) | grep Hello (child process)
  
  When computer startup the kernal create a process called init which has a PID of 1.
  when a process get terminated it will give back resources to the kernal so that other process can be required to the resources.
  
  WIN: Reading process info.
  --------------------------
  ctrl+shift+esc
  prompt: tasklist
  -> Get-Process
  
  LINUX SIGNAL
  ------------
  List of signals that we can send to the process //Interupt the process ctrl+c
  -> sudo parted
  -> ctrl+c
  
  LINUX:(SIGKILL : its time to die)
  -> ps -ef
  -> KILL 10234
  -> kill -KILL 10392
  
  Suspend state. (ctrl+z)
  -> kill -TSTP 10754
  -> ps -x
  
  Continue signal
  -> ps -x
  -> kill -CONT 10829
  SIGTERM
  SIGKILL
  SIGTSTP
  
  LINUX:
  -> ps -x
  -> ps -ef
  UID : Process who launch the process
  PID : Process ID
  PPID : Parent ID
  c : no. of children process
  -> ps -ef | grep chrome         //List of process have given them
  -> ls -l /proc
  -> cat /proc/1805/status
  
  R - Running
  T - stopped
  S - interruptible sleep 
  Time - Total cpu time taken by the process.
  
  WIN [Managing Process]
  ctrl+c
  Process Explore : A utility Microsoft created to let IT support specialist, system administrators and other user look at running processes.(IN BUILT) and can be download .
  view currently active process. (ctrl+f)
  MUI:- Multilingual user interface. Package different language.
  
  RESOURCE MONITORING [WIN]
  -> Get-Process
  -> Get-Process | sort CPU -decending | select -first 3 -Property ID,ProcessName, CPU
  -> C:\Users\anshika\Desktop
  -> cd links
  -> notepad.exe file_1_shortcut.lnk
  -> mklink file_1_symlink file_1.txt
  -> notepad.exe file_1_symlink
  -> mklink /H file_1_hardlink file_1_txt
  
  DISK USAGE : how many file it have.
  ----------------------------------
  Defragmentation:- the idea behind disk defragmentation is to take all the files on a given disk, and reorganise tham into neighboring location(Schedular Task)
  In harddisk have rotating part which have info. where the fies are stored. but in other type HDD they are used trim.
  
  LINUX: file system repair.
  -> sudo fsck /dev/sda
  
  Daemon Processes:Background process run into the background. we ca't see them or we can't interact them.
  
  LINUX:links
  inode like MFTS
  softlink-> file-> HDD
  Hardlink-> inode-> inodetable-> HDD file(Hardlink)
  -> ls -l important_file
  -> ln -s important_file_softlink
  -> ls
  -> ln important_file_hardlink
  -> ls -l important_link
  
  LINUX:
  -> du -h (default current one)
  -> df -h (free space in your entire system)
  
  DATA BUFFER
  ------------
  A region of ram that's used to temporarily store data while its being moved around. 
  when you read and write to USB it first store in cache and buffer first.because RAM operate faster than hard drive if you are not giving time to buffer for read and write data
  data can be data corruption
  NTFS provide to protect data corruption. NTFS -> NTFS log
  -> fsutil repair querc C:
  -> chkdsk /F D:
  
  PROCESS CREATION AND TERINATION:
  --------------------------------
  Non kernal user mode get started when computer is ON.(Session manager subsystem) smss.exe procss(os work) winlog.exe client/server Runtime subsystem called Csrss.exe which handle the win. gui
  
  LINUX:
  -> top
  -> q
  -> uptime
  -> lsof (tracking down the processes holding open file.
  
  OPEN SSH
  --------
  WIN:PuTTy
  -> ssh anshika@IPAddresse
  -> y
  
  Remote connection file transfer
  -------------------------------
  SCP: A command you can use in linux to copy files b/w computers on a n/w(secure copy)
  
  LINUX:
  -> scp /home/anshika/Desktop/myfile.txt anshika@IPADDRESSE
  
  System Monitoring(LINUX)
  -----------------
  -> tail -f /var/log/syslog
  
  EVENT VIEWER
  ------------
  -> ls /var/log
  
  PuTTy:- A free open source s/w that you can use to make remote conn.
  WIN 
  -> putty.exe -ssh anshika@IPADDRESSE
  SSH protocol implemented by other program to secular access one computer from another.
  Remote connection
  -----------------
  Allow us to manage multiple machine.
  
  LINUX:
  this pc-> right click-> Remote setting
  
  FILE TRANSFER ON WINDOW:
  ------------------------
  PuTTy secure client pscp.exe
  -> pscp.exe C:\Users\anshika\Desktop\my_file.txt anshika@IPaddresse
  
  LINUX:
  -> su anshika
  -> cd /home/anshika
  -> ls
  
  Shared folder is the built in function in window.
  RightClick on folder-> sharedwith
  this pc-> computer-> map drive
  -> net share shareMe= C:\Users\anshika\Desktop\ shareMe /grant:everyone, (may be comma and dot)
  
  CENTERLIZED SEATING
  --------------------
  Linux: 
  -> less /var/log/syslog
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
 
 



















































































































































