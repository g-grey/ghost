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

# set text red
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
