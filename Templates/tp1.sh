#!/bin/bash

template-1-title () {
echo -ne "
------------------------------------------------------------------------------
██████╗ ██████╗ ██████╗ ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗
██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║
██████╔╝██████╔╝██████╔╝██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║
██╔══██╗██╔══██╗██╔══██╗██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║
██████╔╝██║  ██║██████╔╝██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗
╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
------------------------------------------------------------------------------
"
}

template-1-version () {
echo -ne "
------------------------------------------------------------------------------
Distrib ver
------------------------------------------------------------------------------
"
#Distrib ver
}

template-1-start () {
echo -ne "
------------------------------------------------------------------------------
Start of installation
------------------------------------------------------------------------------
"
}

template-1-end () {
echo -ne "
------------------------------------------------------------------------------
Installation finished, reboot recommended !
------------------------------------------------------------------------------
"
}