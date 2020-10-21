-> cd
-> ls kenlm/include
-> cd kenlm/lm
-> ls..
-> pwd
-> ls ../util

SYMBOLIC LINKS
-> ls /usr/bin/python
-> ls -l/user/bin/python
 lrwxrwxrwx 1 root 9 dec 21 2013 /user/bin/python
-> man file
-> file /user/bin/python
-> file /user/bin/python2.7
-> ls -l/usr/bin/emacs
-> ls -l /etc/alternative/emacs
-> file /etc/alternative/emacs
-> file /usr/bin/emacs24-x

USING ls TO VIEW HIDDEN FILES
-> ls
-> man ls   (ls ignore file who begin with dot)
-> ls -a    (for ls to display file whose name started with dot)

USING ls WITH ADDITIONAL OPTION
-------------------------------
-> ls
-> man ls
-> ls -l long listing format
-> ls -l enlm
-> ls -l kenlm
-> man ls
-> ls -ln kenlm
-> ls -l -n kenlm      OR ls -ln kenlm

USE ls to list the content of a non-current dir. using an absolute path
-> ls /home/lanes/kenlm
-> cd /home/kenlm/include
-> ls
-> cd

-> python 2.7  (executable file)
-> user/bin (executable file located)

CALC
----
-> calc

USING rm TO DELETE FILES AND DIR.
-> ls
-> rm LICENSE(file name)
-> man rm
-> ls foo
-> rm -i foo/w    (prompt before every removal)
-> no or y
-> -v     (explain what is being done)
-> man rm
-> rm -v foo/x

ABSOLUTE PATH
-> rm -v /home/lanes/foo/y
-> rm foo                   (by default rm does't remove dir.)
-> rm -r -I -v foo

USING cd TO NAVIGATE TO A DIR. USING A RELATIVE PATH
----------------------------------------------------
-> pwd
-> ls
-> cd baz
-> pwd
-> .          (current dir.)
-> pwd
-> cd..
-> cd foo
-> cd ../..     (parent dir.)   /home/lanes/home
-> cd lanes/kenlm
-> pwd
-> ls kenlm/util
-> ls kenlm/util/stream
-> cd kenlm/util/stream
-> cd


-------------------------------------------------------------
-> echo $HOME
-> echo $SHELL
--------------------------------------------------

-> man mv
-> mv kenlm/LICENCE abc
-> ls -v baz/abc kenlm/LICENCE

MOVE MULTIPLE Dir.
-> touch x y z 
-> ls
-> mv x y z foo
-> ls
-> ls foo

USING cd TO NAVIGATE USING ~
-> pwd
-> echo $HOME
-> ls /home
-> cd ~anshika
-> cd  ~         (~ home dir.)
-> cd ~/kenlm


USING ln TO CREATE SYMBOLIC LINKS IN ANOTHER DIR.
-> ln -s kenlm/LICENCE baz
-> ls -l baz
-> file baz/LICENCE
-> rm baz/LICENCE
-> ln -s /home/lanes/kenlm/LICENCE baz
-> ls -l baz
-> rm baz/LICENCE
-> ln -s kenlm/LICENCE/ baz
-> cd baz
-> ls -l

man READLINK
------------
-> readlink -m LICENCE      (make links between files)
-> pwd
-> mkdir kenlm
-> ls
-> man touch
-> touch kenlm/LICENCE
-> ls -l
-> file LICENCE
-> remove LICENCE kenlm/LICENCE
-> mkdir kenlm
-> ls
-> pwd 
-> ls /home/lanes/kenlm/LICENCE
-> ls ./home/lanes/
-> ls ..
-> ls ../kenlm
-> cd 
-> ls "-s ../kenlm/LICENCE"    AND ls ../kenlm/LICENCE
-> cd 
-> ls -l baz
-> readlink -m baz/LICENCE
-> rm baz/LICENCE
-> ls -s -r kenlm/LICENCE baz
-> ls -l baz
-> readlink -m baz/LICENCE

-----------------------------------------------------------------
USING file TO DETERMINE FILE TYPE
-> file /usr/local
-> file /usr/share/man/mailq.1.g.z
-> file kenlm/LICENCE

------------------------------------------------
USING cp TO COPY A SINGLE FILE
-> cp kenlm/LICENCE abc
-> ls
-> diff --report-identical-files kenlm/LICENCE abc    (to check the files are identity)
-> cp abc baz
-> ls baz

USING cp TO COPY A SINGLE DIR.
------------------------------
-> ls
-> cp kenlm wxyz     (cp can't copy a single dir.)
-> cp -r kenlm wxyz

USING ECHO TO USING SINGLE MESSAGE
----------------------------------
-> echo "hello world"

PIPELINE | SENDING PROCESS

MULTIPLE LINE MESSAGE
-> echo "hello world
        hello world"
 
 USING ECHO TO DISPLAY MESSAGE WITH ESCAPE SEQUENCES
 ---------------------------------------------------
 -> echo -e " he did't fall ? \t in conceivable "

GREP
----
-> ls /bin  /usr/bin | grep -i zip  (i ignore case distinguish)

echo
----
-> cd /etc/x11
-> ls
-> echo *

PATHNAME EXPANSION
------------------
-> ls /user/include/*.h
-> ls /user/bin/py*

TILDE EXPANSION
----------------
~ (begining of the user name)
-> ~anshika
-> echo ~

ARITHMATIC EXPANSION
--------------------
-> echo $(( 7+3 ))
-> echo $(( 5**$(( 1+1 ))))

ARITHMATIC EXPRESSION
---------------------
Pramble{Expression} postscript
-> echo abc{ Anshika,Virat }xyz
-> echo I love { Anshika,Virat }
-> echo 'I love'{ virat }
-> echo Number{1..10}
-> echo a{A{1,2}, B{3,4}}b

MKDIR PHOTOS
------------
-> cd Photos
-> mkdir { 200..2017 }-{ 1..12 }

PATHNAME EXPRESSION
-------------------
-> ls /usr/include/*.h
-> ls /usr/bin/py*

COMMAND SUBSTITUTION
--------------------
o/p of command as an argument of other command
-> ls /etc/x11
-> echo $(ls /etc/x11)
-> ls /etc/x11 | sort
-> ls -l $(which cp)                //cp argument
-> ls -l 'which cp'               //don't use

ESCAPING CHARECTER
------------------
-> echo ${USER}
-> echo \$
-> echo \$USER
-> echo the balance for user ${USER} is \$5.00
-> echo \\
-> echo the balance for user \\$SUPER is \$5.00
-> echo greetings\ \&\ salutation\!
-> echo greetings\ \&\ salutation\ {Joe,Jane}\!

DOUBLE QUOTED STRINGS
---------------------
-> mkdir example
-> cd example
-> touch my\ first\ file.txt
-> ls -l
-> rm "my file file.txt"
-> ls -l
-> echo "greetings & salutations"
-> echo "* ~ {}"
-> echo this is a test
-> echo "this is a test"
-> echo this is a test 
-> echo touch foo.txt bar.txt
-> ls "~/example/*.txt"
-> ls ~/example/*.txt
-> echo "~/example/*.txt"
-> echo ~/example/*.txt
-> echo color-{red,green,blue}
-> echo "color-{red,green,blue}"
-> echo "$ ${} $() $(()) ' ' \$"
-> echo "${USER} $USER $((2+2)) $(cal)"

SIMPLE QUOTED STRING
---------------------
-> echo my \\\\ string \\ with \\\\\\
-> echo "my string with spaces"
-> mkdir example
-> cd example
-> touch a.txt b.txt
-> ls
-> echo hello, world ~/example /*.txt {3..7} $ (file /etc/crontab) $((2+2)) ${USER}
-> file /etc/crontab
-> echo "hello, world ~/example /*.txt {3..7} $ (file /etc/crontab) $((2+2)) ${USER}"
-> echo 'hello, world ~/example /*.txt {3..7} $ (file /etc/crontab) $((2+2)) ${USER}'






















































































