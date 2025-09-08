#!/bin/bash

# Script should be executed with sudo/root access.
if [[ "${UID}" -ne 0 ]]
then 
	echo "Please run with sudo or root."
	exit 1
fi

# User should provide atleast one argument as username else guide him/her
if [[ "${#}" -lt 1 ]]
then 
	echo "Usage: ${0} User_Name [Coment]..."
	echo "Create a user with name USER_NAME and comments field of COMMENT"
	exit 1
fi

# Store 1st argument as user name 
username="${1}"
echo "$username"

# In case of more than one argument, store it as account coments
shift 
COMMENT="${@}"

# Create a password 
PASSWORD=$(date +%s%N)

# Create the user
useradd -c "${COMMENT}" -m $username

# Check if the user is successfully created or not 
if [[ $? -ne 0 ]]
then 
	echo 'The Account could not be created'
	exit 1
fi

# Set the password for the user 
echo $PASSWORD | passwd --stdin $username
# Check if password is successfully set or not
if [[ $? -ne 0 ]]
then 
	echo "Password could not be set"
	exit 1
fi

# Force password change on the first login.
passwd -e $username

# Display the username and password and hostname where it is created 
echo 
echo "Username: $username"
echo 
echo "Password: $PASSWORD"
echo
echo $(hostname)


