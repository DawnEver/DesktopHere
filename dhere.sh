#!/bin/bash
cd `dirname $0`
param=$1

if [ ! -d ./.dhere ];
then
    mkdir ./.dhere
fi

desktopHere(){
    path=$1
    echo $passwd | sudo -S rm -r ~/Desktop
    ln -s $path ~/Desktop
}

backup(){
    time=`date "+%Y_%m_%d_%H_%M_%S"`
    path=./.dhere/_Desktop_$time
    mkdir $path
    cp -r ~/Desktop/ $path
    desktopHere $path
}

authenticate(){
    if [ ! -e ./.dhere/password.txt ];
    then
        read -s -p "please enter your password:" password
        echo $password > ./.dhere/password.txt
    fi
}

authenticate

if [[ $param == --reset ]]&&[[ $param == -r ]];
then
    echo ==================================
    ls .dhere | grep '_Desktop_.'|sort
    echo ==================================
    read -p 'please enter your desktop version:' Desktopbackup
    
    while [ ! -d $destpath];
    do
        read -p 'please try again:' Desktopbackup 
        destpath=./.dhere/$Desktopbackup 
    done
    desktopHere $destpath

elif [[ $param == --backup ]]&&[[ $param == -b ]];
then
    echo ==================================
    echo store current desktop
    backup

elif [[ $param == --help ]]&&[[ $param == -h ]];
then
    more ./readme.md
else
    if [ -d $param ];
    then
        desktopHere $param
    else
        echo "please check your directory"
    fi
fi

