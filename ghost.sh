#!/bin/sh

# exit cleanly on ctrl-c
trap bye SIGINT

bye() {
    printf "\n\ngooOOodbye...\n"
    exit 0
}

FRAMES[0]=$(cat << END
    _____
   /      \ 
   |'   ' |
   |      |
    \/\/\/
END
)

FRAMES[1]=$(cat << END
    _____
   /      \ 
   |.   . |
   |      |
   |/\/\/\|
END
)

# red, yellow, green, blue, white
COLORS=("\033[0;31m" "\033[1;33m" "\033[0;32m" "\033[0;34m" "\033[1;37m")

# set text to a random color
printf ${COLORS[$RANDOM % ${#COLORS[@]}]}

while true
do
    for FRAME in "${FRAMES[@]}"
    do
        clear
        printf "$FRAME\n"
        sleep .3s
    done
done
