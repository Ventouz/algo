#!/bin/bash
clear
############################# VARIABLES #############################
MAX=$1
BASE=$2
C=1
L=1
PRINTL=0
PRINTC=0

############################# FUNCTIONS #############################
function set_base() {
  Tab[$L,1]=1
  Tab[$L,$L]=1
}

function print_all() {
  for (( PRINTL = 1; PRINTL <= L; PRINTL++ )) do
      for (( PRINTC = 1; PRINTC <= PRINTL; PRINTC++ )) do
          printf "%s  " ${Tab[$PRINTL,$PRINTC]}
      done
      echo
      sleep 0.1
  done
}

function continue() {
  printf "\n"
  read -p "Appuyez sur une touche pour continuer"
}

function debug() {
  eval echo ${Tab[*]}
  printf "Tab[%s,%s] = Tab[%s,%s] (%s) + Tab[%s,%s] (%s) = %s \n" $L $C $X $Y $A $X $C $B $INSERT

}
############################# MAIN SCRIPT #############################

while [[ $L -le $MAX ]]; do
  set_base

  print_all

  while [[ $C -le $L ]]; do
    let "X = L - 1"
    let "Y = C - 1"
    A=${Tab[$(($L-1)),$(($C-1))]}
    B=${Tab[$(($L-1)),$C]}
    Tab[$L,$C]=$(( $A + $B ))
    INSERT=${Tab[$L,$C]}
    debug
    let "C = C + 1"
  done
  let "L = L + 1"
  C=1
done
