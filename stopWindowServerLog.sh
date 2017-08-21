# stop WindowServer log
pidString=`ps -A | grep WindowServer`
echo $pidString

# stop warning log
PID=`pgrep -f WindowServer`
sudo log config --process=$PID --mode "level:off"
