#!/bin/bash

echo !!!this script removes previous files in target device before copying
read -p "are you sure? (y/n): " answer

if [[ $answer != "y" ]]
then
    exit
fi

echo removing previous files in target device...
ssh Javi@Ivy-Bridge 'rd /s /q "C:\\Users\\Javi\\Pictures\\_synced"'
echo copying files to target device...
scp -r $HOME/pics/_synced Javi@Ivy-Bridge:C:/Users/Javi/Pictures/

read

