#!/bin/bash                                                                                                                                                        
                                                                                                                                                                   
# fedora server command replacement 11-13-2018                                                                                                                     
# please send comments or updates to triplr.dev@gmail.com or github.com/tripLr                                                                                     
# for build environment setup google android development                                                                                                           
# and kernel build environment and most c and java compilers                                                                                                       
# necessary to build android nougat and  oreo                                                                                                                      
# test 1                                                                                                                                                           
# below line commands are common to  ubuntu packages for compiling android , listed on                                                                             
# https://source.android.com/setup/build/initializing                                                                                                              
# and                                                                                                                                                              
# https://forum.xda-developers.com/chef-central/android/how-to-build-lineageos-14-1-t3551484                                                                       
# apt-get install bc bison #build-essential ccache curl flex g++-multilib #gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-de$
                                                                                                                                                                   
# from github.com/ripee https://github.com/ripee/scripts/blob/master/build_environment.sh                                                                          
### ??libxml2-utils??  not found in fedora                                                                                                                         
# fedora install packages listed below                                                                                                                             
                                                                                                                                                                   
sudo dnf -y clean metadata                                                                                                                                         
sudo dnf -y dist-upgrade                                                                                                                                           
sudo dnf -y update                                                                                                                                                 
# the following line is optional because the previous lines updates the existing packages and icedtea except as source                               
# sudo dnf -y remove openjdk-* icedtea-* icedtea6-*                                                                                                                
sudo dnf -y autoremove

# fedora packages that replace ubuntu build-essential package                                                                                                      
sudo dnf -y groupinstall "Development Tools" "Development Libraries"                                                                                               
                                                                                                                                                                   
# fedora gcc-c++ replaces ubuntu  g++-multilib gcc-multilib                                                                                                        
sudo dnf -y install gcc-c++                                                                                                                                        
                                                                                                                                                                   
# fedora readline.* installs listed below include both 32 bit (i686) and 64bit (x86-64) replaces ubuntu lib32readline-dev                                          
sudo dnf -y install readline.*                                                                                                                                     
sudo dnf -y install readline-devel.*                                                                                                                               
                                                                                                                                                                   
# fedora packages zlibrary* replaces lib32z1-dev package in ubuntu                                                                                                 
sudo dnf -y install -y zlibrary.*                                                                                                                                  
sudo dnf -y install -y zlibrary-devel.*    

                                                                                                                                                                   
# fedora packages below repalace ubuntu ncurses-devel ncurses-c++-libs                                                                                             
sudo dnf -y install ncurses.*                                                                                                                                      
sudo dnf -y install ncurses-*                                                                                                                                      
                                                                                                                                                                   
# fedora package ImageMagick replaces ubuntu imagemagic                                                                                                            
sudo dnf -y install ImageMagick                                                                                                                                    
                                                                                                                                                                   
# fedora packages SDL and SDL2 replace ubuntu libsdl1.2-dev                                                                                                        
sudo dnf -y install SDL.* SDL-* SDL2.* SDL2-*                                                                                                                      
                                                                                                                                                                   
# fedora package openssl and openssl-libs replace ubuntu libssl-dev                                                                                                
sudo dnf -y install openssl openssl-libs.*    
# fedora package gtk3 replaces ubuntu package libwxgtk3.0-dev                                                                                                      
sudo dnf -y install gtk3 gtk-devel.*                                                                                                                               
                                                                                                                                                                   
# fedora package libxml2 needs 32 and 64 bit libraries same command as ubuntu                                                                                      
sudo dnf -y install libxml2 libxml2-devel.*                                                                                                                        
                                                                                                                                                                   
# fedora package java-1.8.0-openjdk replaces ubuntu openjdk*                                                                                                       
sudo dnf -y install java-1.8.0-openjdk                                                                                                                             
sudo dnf -y install java-1.8.0-openjdk-devel                                                                                                                       
                                                                                                                                                                   
# fedora package libxslt provides ubuntu xsltproc                                                                                                                  
sudo dnf -y install libxslt
# fedora package zlib replaces ubuntu zlib1g-dev                                                                                                                   
sudo dnf -y install zlib.*                                                                                                                                         
                                                                                                                                                                   
# packages below with the same name as ubuntu and fedora                                                                                                           
sudo dnf -y install bc bison ccache curl flex git gnupg gperf lzop pngcrush rsync schedtool squashfs-tools zip                                                     
                                                                                                                                                                   
mkdir ~/bin                                                                                                                                                        
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo                                                                                  
chmod a+x ~/bin/repo                                                                                                                                               
ccache -M 100G                                                                                                                                                     
# first time running this script added the three following lines which either creates                                                                              
# a blank config.properties or leaves it alone for the next command                                                                                                
mkdir ~/.jack-server                                                                                                                                               
cd ~/.jack-server                                                                                                                                                  
touch config.properties                                                                                                                                            
sed -i 's/jack.server.max-service=4/jack.server.max-service=1/g' config.properties                                                                                 
cd ~                                                                                                                                                               
echo 'export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx13736M"' >> ~/.bashrc                                                          
echo 'export LANG=C' >> ~/.bashrc                                                                                                                                  
echo 'export PATH=~/bin:$PATH' >> ~/.bashrc                                                                                                                        
echo 'export USE_CCACHE=1' >> ~/.bashrc                                                                                                                            
echo 'export USE_NINJA=false' >> ~/.bashrc                                                                                                                         
echo 'export WITH_SU=true' >> ~/.bashrc                                                                                                                            
. ~/.bashrc                                                                                                                                                        
mkdir ~/android


echo 'fedora build environment update successful' 
