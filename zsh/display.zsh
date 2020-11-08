if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    echo "Windows 10 Bash - setting display vars"
    # https://stackoverflow.com/questions/61110603/how-to-set-up-working-x11-forwarding-on-wsl2
    export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
    export LIBGL_ALWAYS_INDIRECT=1
    
    export LC_ALL=C
fi
