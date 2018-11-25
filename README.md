# fedora-scripts-build
# i was successful inmy first commit from my server to this repo. sweet 11-24-18 so cool

scripts to setup and build android LineageOS using fedora server 

android developers typically use virtual machines using ubuntu
and ubuntu packages are described in android developer for a build environment
I have translated and tested line by line scripts using ubuntu into fedora packages
I am using fedora on a server to build, and although I could run ubuntu in a VM or container 
I am going to use baremetal for this try.

steps and goals
1. update .profile .bashrc .bash_aliases to make working with commands easier
    suggest making shortcuts to git commands for my use 
2. test line by line commands in ubuntu and update bash scripts 
3. run buildenvironment.sh success
4. run lineageos.sh .. success
5. fork a build repo to fix exfat bug in lineageos for gts28wifi (sm-t710)
    a. build kernel only
    b. build entire rom
6. fix and trac bugs as usual
7. merge build scripts with git and directories ?? make a one stop build for a device
