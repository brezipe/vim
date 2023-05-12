Můj vimrc
-------------------

Čerpáno už nevím odkud
-------------------
Doporučuji:
https://github.com/brezipe/awesome-cheatsheets/blob/master/tools/vim.txt

https://vimawesome.com/

Pro spuštění v docker kontejneru ubuntu na vyzkoušení:
-------------------
```
docker pull ubuntu
docker run -ti --rm ubuntu /bin/bash

root@bfc3cf11ba4b:/# useradd -m petr
root@bfc3cf11ba4b:/# passwd petr

root@bfc3cf11ba4b:/# apt update
root@bfc3cf11ba4b:/# apt upgrade

root@bfc3cf11ba4b:/# apt install sudo vim git inetutils-ping exuberant-ctags
root@bfc3cf11ba4b:/# vim /etc/sudoers

root@bfc3cf11ba4b:/# su petr
$ bash
petr@bfc3cf11ba4b:/$ cd ~

petr@bfc3cf11ba4b:/$ git clone https://github.com/brezipe/vim.git

petr@bfc3cf11ba4b:~$ cp vim/.vimrc .

petr@bfc3cf11ba4b:~$ vim
-----------------------------
petr@bfc3cf11ba4b:~$ vim
Installing Vundle..
:!sudo apt install git curl
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
git is already the newest version (1:2.34.1-1ubuntu1.9).
The following NEW packages will be installed:
  curl libcurl4
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 484 kB of archives.
After this operation, 1260 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcurl4 amd64 7.81.0-1ubuntu1.10 [290 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 curl amd64 7.81.0-1ubuntu1.10 [194 kB]
Fetched 484 kB in 1s (361 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package libcurl4:amd64.
(Reading database ... 11139 files and directories currently installed.)
Preparing to unpack .../libcurl4_7.81.0-1ubuntu1.10_amd64.deb ...
Unpacking libcurl4:amd64 (7.81.0-1ubuntu1.10) ...
Selecting previously unselected package curl.
Preparing to unpack .../curl_7.81.0-1ubuntu1.10_amd64.deb ...
Unpacking curl (7.81.0-1ubuntu1.10) ...
Setting up libcurl4:amd64 (7.81.0-1ubuntu1.10) ...
Setting up curl (7.81.0-1ubuntu1.10) ...
Processing triggers for libc-bin (2.35-0ubuntu3.1) ...

Press ENTER or type command to continue
---------------------------------------------------------

Done! 
CtrlSpace requires 'hidden' option enabled!
[everforest] Generated /home/petr/.vim/bundle/vim-color-forest-night/after/syntax
Press ENTER or type command to continue

---------------------------------------------------------
Shift + i
.vimrc

Na konec (nebo kdekoliv mimo podmínku) přidat:
set hidden

------------
RESTART vim a je to.
------------

** Na vyzkoušení:

petr@bfc3cf11ba4b:~$ git clone https://github.com/brezipe/PDFtoImage.git

petr@bfc3cf11ba4b:~$ cd PDFtoImage/
petr@bfc3cf11ba4b:~/PDFtoImage$ vim
```

