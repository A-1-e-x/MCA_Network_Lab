#!/bin/bash
read -p 'Username: ' user
read -sp 'Password: ' pass
echo
if [[ $user == "alex" && $pass == "alex123" ]]; then
echo -e "Welcome! You are successfully logged in\n"
else
echo -e "Unsuccessful login\n"
fi
