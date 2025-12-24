#! /usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
echo -e $b">"$w" Specnaz - Podstawowa wyszukiwarka informacji"
echo -e $b">"$w" Przygotowanie do instalacji potrzebnych pakietów ..."
sleep 3
echo -e $b">"$w" Instalowanie pakietu: "$g"libxml2"$w
pkg install libxml2 -y
echo -e $b">"$w" Instalowanie pakietu: "$g"python"$w
pkg install python python-pip -y
echo -e $b">"$w" Instalowanie modułu: "$g"lxml"$w
CFLAGS='-O0' pip install lxml
echo -e $b">"$w" Instalowanie modułu: "$g"requests"$w
pip install requests
echo -e $b">"$w" Instalowanie modułu: "$g"email-validator"$w
pip install email-validator
echo -e $b">"$w" Instalowanie modułu: "$g"googlesearch-python"$w
pip install googlesearch-python
echo -e $b">"$w" Instalacja zakończona sukcesem"
wget -q https://raw.githubusercontent.com/Remo-Faller/Specnaz/main/specnaz -O /data/data/com.termux/files/usr/bin/specnaz && chmod +x /data/data/com.termux/files/usr/bin/specnaz
echo -e $b">"$w" Wpisz polecenie "$g"specnaz"$w" w Terminalu"
