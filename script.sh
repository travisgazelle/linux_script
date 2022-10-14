#!/bin/sh

# Pause Function
pause() {
  read -p "Press enter to continue "
}

# Read File Function
read_file() {
  echo "Enter the name of the file you would like to read: "
  read file
  for word in `cat $file`
  do
    echo $word
  done
  
  options
  read_choice
  
  read -p "Enter 1 for Encrypt 2 for Decrypt: " user_selection
  if [ $user_selection == 1 ];
  then
    encrypt
  else
    decrypt
  fi
}

# User Typed Message Function
type_message() {
  echo "Enter your message: "
  read message
  echo $message > message.txt
  file="message.txt"
  
  options
  read_choice
  
  read -p "Enter 1 for Encrypt 2 for Decrypt: " user_selection
  
  if [ $user_seleciton == 1 ];
  then
    encrypt
  else
    decrypt
  fi
}

# Menu Function
show_menu() {
  clear
  echo "---------"
  echo "Main Menu"
  echo "---------"
  echo " "
  echo "1. Read File Message"
  echo "2. Type A Message"
  echo "3. Exit"
  echo " "
}

# Options Function
options() {
  echo "Choose from ROT13 or Caesar Chipher"
  echo "1. ROT13"
  echo "2. Caesar Cipher"
}

# Read Menu Option Function
read_menu_option() {
  local choice
  read -p "Enter choice [1 - 3] " choice
  case $choice in
    1) read_file ;;
    2) type_message ;;
    3) exit 0 ;;
  esac
}

# Read Choice Function
read_choice() {
  local choice
  read -p "Choose [1 -2] " choice
  if [ $choice == 1 ];
  then
  value=13
  else
  read -p "Choose a value for Caesar Cipher [1 - 26] " value
  fi
  echo "value is: " $value
}

# Encrypt Function
encrypt() {
  echo "ENCRYPTING... "
  shifted=$(cat "$file")
  for (( counter=$value; counter>0; counter-- ))
  do
  shifted=$(echo "$shifted" | tr "[A-Za-z]" "[B-ZAb-za]")
  done
  echo "Encrypted file: "
  echo $shifted
  output
}

# Decrypt Function
decrypt() {
  echo "DECRYPTING... "
  shifted=$(cat "$file")
  for (( counter=26-$value; counter>0; counter-- ))
  do
  shifted=$(echo "$shifted" | tr "[A-Za-z]" "[B-ZAb-za]")
  done
  echo "Decrypted files "
  echo $shifted
  output
}

# Output File Function
output() {
  read -p "Enter output file name: " outfile
  echo $shifted > $outfile
  clear
  display_output
  pause
}

# Display File Function
display_output() {
  echo "Here is the content of " $outfile
  for word in `cat $outfile`
  do
    echo $word
  done
}

# Loop
while true
do
  show_menu
  read_menu_option
done
