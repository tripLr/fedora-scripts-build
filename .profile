# add Android SDK platform tools to path                                                                                                                           
if                                                                                                                                                                 
   [ -d "$HOME/platform-tools" ] ; then                                                                                                                            
      PATH="$HOME/platform-tools:$PATH"                                                                                                                            
fi                                                                                                                                                                 
                                                                                                                                                                   
# set PATH so it includes user's private bin if it exists                                                                                                          
if                                                                                                                                                                 
   [ -d "$HOME/bin" ] ; then                                                                                                                                       
      PATH="$HOME/bin:$PATH"                                                                                                                                       
fi                                                                                                                                                                 
                                                                                                                                                                   
# dont forget to update your environment source ~/.profile                                                                                                         
# this will auto update when updating ~/.bashrc                                                                                                                                                                   
echo 'update ~/.profile parameters successful'     
