#!/bin/bash
username=$(whoami)
# Default message
message="Hi from Hi2! How’s your day, $username"
message2=" "

# Check for arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -u|--u) 
            message2="You have found an easter egg in an test!!!" 
            ;;
        -ily|--ily)
            message2="ILY $username" 
            ;;
        -help| --help)
            message2="Command additions that can be used: LXUgYW5kIC1pbHk= "
            ;;
        *)
            echo "Unknown option: $1" 
            exit 1 
            ;;
    esac
    shift
done

# Print the message
echo "$message"
echo "$message2"