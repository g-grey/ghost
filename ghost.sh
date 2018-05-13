#!/bin/bash

FRAMES[0]=$(cat << END
    _____
   /      \\ 
   |'   ' |
   |      |
    \/\/\/
END
)

FRAMES[1]=$(cat << END
    _____
   /      \\ 
   |.   . |
   |      |
   |/\/\/\|
END
)

trap bye INT

bye() {
    printf "\ngooOOodbye..."
    exit 0
}

printf "\033[0;31m"

while true
do
    for FRAME in "${FRAMES[@]}"
    do
        clear
        printf "$FRAME\n"
        sleep .3s
    done
done
