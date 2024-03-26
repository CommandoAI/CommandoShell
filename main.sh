#!/bin/bash

sentence="$*"

# Function to prompt for user confirmation
confirm_execution() {
    read -p "$(tput setaf 4)> Execute? $(tput setaf 2)[yes] $(tput setaf 1)[no] $(tput setaf 3)[edit]$(tput sgr0): " execute_option

    case $execute_option in
        yes)
            eval "$1"
            ;;
        edit)
            read -e -p "$(tput setaf 4)> Modify the command: $(tput sgr0)" -i "$answer" modified_command
            confirm_execution "$modified_command"
            ;;
        *)
            echo "Execution canceled."
            ;;
    esac
}



answer=$(curl -s --location 'https://hy655ghxvselxbedcujjfdxhgm0iwhua.lambda-url.eu-north-1.on.aws/' \
--header 'Content-Type: application/json' \
--data "{
  \"question\": \"$sentence\"
}")



echo "$answer"

confirm_execution "$answer"
