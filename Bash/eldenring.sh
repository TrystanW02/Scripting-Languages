#!/bin/bash

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in

        1)
                type="Samurai"
                hp=10
                attack=20
                ;;
        2)
                type="Prisoner"
                hp=15
                attack=20
                ;;
        3)
                type="Prophet"
                hp=30
                attack=4
                ;;
esac

echo "You have chosen the $type class. Your HP is $hp and your attack is $attack.

echo "You Died"



# First Beast

beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches. Prepare for battle. Pick a number between 0-1. (0/1)"

read tarnished

if [[ $beast == $tarnished && 47 > 23 ]]; then
        echo "Beast VANQUISHED!! Congrats felow tarnished"
else
        echo "You Died"
fi

sleep 5



# Second Beast

margot=$(( $RANDOM % 10 ))

echo "Margot appears in your path. Your chances of victory are low, but you try anyway. Pick a number between 0-9."

read tarnised

if [[ $margot == $tarnished || $tarnished == "coffee" ]]; then
          echo "Beast vanquished"
elif [[ $USER == "bernard" ]]; then
          echo "Bernard always wins. You vanquished the beast"
else
          echo "You Died"
fi


