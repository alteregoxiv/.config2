#!/usr/bin/python3

from os import system
from sys import argv

if len(argv)==1:
    system("sudo mount /dev/sda5 /home/prasad/Windows")
else:
    system("sudo umount /dev/sda5")
