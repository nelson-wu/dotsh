#!/bin/bash
function checklock {
while [ 1==1 ]; do
#    xssstate -i
    if [ $(xssstate -i) -ge 50000 ]; then
        if [ $(mpc | grep -c playing) -eq 0 ]; then
            slock
        fi
    fi
    sleep 10
done
}
function lockscreen {
slock
while [ 1==1 ]; do
#    xssstate -i
    if [ $(xssstate -i) -lt 18000 ]; then
        checklock
    fi
done
}
checklock
