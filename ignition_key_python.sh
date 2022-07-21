#!/bin/bash

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

BLUE "Installing python-requests..."
pip install requests

BLUE "Installing Python flask..."
pip install flask

BLUE "Installing Python flask-login..."
pip install flask-login

BLUE "Installing Python colorama..."
pip install colorama

BLUE "Installing Python passlib..."
pip install passlib

BLUE "Installing Python pwntools..."
pip install pwntools

BLUE "Installing Python scapy..."
pip install scapy

BLUE "Installing Python library netifaces..."
pip install netifaces

BLUE "Installing Python library iptools..."
pip install iptools

BLUE "Installing Python library OpenSSL..."
pip install pyopenssl

BLUE "Installing Python library pydispatch..."
pip install pydispatch

BLUE "Installing impacket..."
pip install impacket
