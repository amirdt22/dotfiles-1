# change to home directory when launching a blank wsl terminal
# setting cmder/conemu to start in bash home isn't working
WSL_HOME_DIR=/mnt/c/Users/amird/cmder
CWD=`pwd`
if [[ "$CWD" == "$WSL_HOME_DIR" ]]; then
    echo "started in $WSL_HOME_DIR changing to ~"
    cd
fi
