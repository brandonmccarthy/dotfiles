#!/bin/sh
# /usr/bin/i3exit

lock() {
	betterlockscreen -l dimblur
}

# with openrc use loginctl
[[ $(cat /proc/1/comm) == "systemd" ]] && logind=systemctl || logind=loginctl

case "$1" in
    lock)
	betterlockscreen -l dimblur
        ;;
    logout)
        i3-msg exit
        ;;
    switch_user)
    	dm-tool switch-to-greeter
    	;;
    suspend)
	lock && $logind suspend
        ;;
    hibernate)
    	lock && $logind hibernate
        ;;
    reboot)
        $logind reboot
        ;;
    shutdown)
        $logind poweroff
    	;;
    *)
        echo "== ! i3exit: missing or invalid argument ! =="
        echo "Try again with: lock | logout | switch_user | suspend | hibernate | reboot | shutdown"
        exit 2
esac

exit 0
