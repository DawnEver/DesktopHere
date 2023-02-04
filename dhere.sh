#!/bin/bash
cd `dirname $0`
param=$1

if [ ! -d ./.dhere ];
then
    mkdir ./.dhere
fi

backup(){
    time=`date "+%Y_%m_%d_%H_%M_%S"`
    mkdir ./.dhere/_Desktop_$time
    mv ~/Desktop/* ./.dhere/_Desktop_$time
}

authenticate(){
    if [ ! -e ./.dhere/password.txt ];
    then
        read -s -p "please enter your password:" password
        echo $password > ./.dhere/password.txt
    fi
}

authenticate

if [[ $param == reset ]];
then
    echo ==================================
    ls .dhere | grep '_Desktop_.'|sort
    echo ==================================
    read -p 'please enter your desktop version:' Desktopbackup
    echo $Desktopbackup
    while [ ! -d ./.dhere/$Desktopbackup ];
    do
        read -p 'please try again:' Desktopbackup
        echo 
    done

elif [[ $param == backup ]];
then
    echo store current desktop
    backup

elif [[ $param == help ]];
then
    more ./readme.md
fi

# echo $passwd | sudo -S cp -r ~/Desktop ./.dhere/_Desktop