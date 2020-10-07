The command line interpreter in linux is called a shell and the language that we will use to interact with the shell is call bash.

C:\Users\Cindy\Desktop :- In ctor window file system are assigned to drive letters like C:,D:,X:

the root directory of C: would be written C:\ and the  root directory of X: would be written as X:

directories are seperated by "/" ulike linux which uses "/"

Aliasaes nick name of cmd.

C: drive where o.s been installed

C: drive root folder is what we call a Parent directory and the content inside a considerd child directoreis.

* Program files(x86):-- the directories contain most of app. and other program that install window.

User:-- this contain user profile directories and home directories.

window where o.s is install.

->Get-Help ls
->Get-Help-full
->ls force C:/

Absolute Path -- Is one that start from the main directory.
Relative Path -- That Path from your current directory.
wildcard -- Is a charecter that's used to help select files based on a certain pattern.

-> cd C:\Users\Cindy\Documents\
-> ls
-> cp *.pg C:\Users\Cindy\Desktop
-> cd ~\Desktop
-> ls

Copy contents of the directory ->Recurse, ->Verbose
-> mv .\blue_document.txt yellow_document.txt
-> ls

for multiple.
-> *_document.txt C:\Users\Cindy\Documents\
-> C:\Users\Cindy\Documents\

Remove files and directories 
-> rm ~\txt1.txt
-> rm ~\txt1.txt system_files -force    // system files:- we have no permission to remove them but we can use by command -force.

Remove directories..
-> rm ~\misc_folder
-> N
-> -Recurse

Pwd :- Print working directories.

Path of home dir.
-> cd~
-> cd ~\Desktop

".\" current directory.

Make dir.
-> mkdir my_cool_folder

Copy.
-> cp my_cool_folder C:\Users\Cindy\Desktop\my_cool_folder
-> cd ~\Desktop

Input, Output, Pipeline.
cd C:\Users\Cindy\Deskop.
-> echo woof > dog.txt
-> ls
-> cat .\dog.txt
-> ls
-> echo woof
-> echo woof >> dog.txt
-> cat dog.txt

Pipeline.
-> cat word.txt
-> cat word.txt | select_string st
-> cat word.txt | select_string st > st_words.txt
-> cat st_words.txt
-> cat < file_input.txt
-> ls -la | grap bluetooth

stderr
-> rm secure_file
-> rm secure_file 2> error.txt
-> cat error.txt
-> rm secure_file 2> $null \\for throughout the error msg.


