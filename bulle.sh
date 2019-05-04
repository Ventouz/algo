#!/bin/bash
clear

# background color using ANSI escape
bgRed=$(tput setab 1) # red
bgGreen=$(tput setab 2) # green
bgYellow=$(tput setab 3) # yellow
fgBLack=$(tput setaf 0) # black
txStandout=$(tput smso)   # standout
txReset=$(tput sgr0)   # reset attributes

# DECLARATION DES VARIABLES
declare ARRAY
declare i
declare j
declare RESULT
declare temp
i=0
noswitch=1

# SAISIR NOMBRE A TRANSFORMER
echo -e "Veuillez saisir le nombre à transformer :"
read TRIER

# TRANSFORMER VARIABLE trier EN VARIABLE array
while [ $i -lt ${#TRIER} ]; do
  ARRAY[$i]=${TRIER:$i:1}
  let "i = i + 1"
done

# TROUVER imax AVEC  "longueur du tableau - 1"
let "imax = ${#ARRAY[@]} - 1"

echo "Tableau avant le tri :"
echo -e "${ARRAY[*]}"

while [[ noswitch -eq 1 ]]; do
  noswitch=0

  for (( i = 0; i < imax; i++ )); do
    let "j = i + 1"

    if [[ ${ARRAY[$i]} > ${ARRAY[$j]} ]]; then
      #echo -e " ${ARRAY[$i]} > ${ARRAY[$j]}"
      noswitch=1

      printf "%s " ${ARRAY[*]}
      printf "\n"

      # permutation des valeurs
      temp=${ARRAY[$i]}
      ARRAY[$i]=${ARRAY[$j]}
      ARRAY[$j]=$temp

      # sauvegarde des variables pour appliquer code couleur
      backI=${ARRAY[$i]}
      backJ=${ARRAY[$j]}
      ARRAY[$i]=$bgGreen$fgBLack${ARRAY[$i]}$txReset
      ARRAY[$j]=$bgYellow$fgBLack${ARRAY[$j]}$txReset

      printf "%s " ${ARRAY[*]}
      printf "\n"
      #sleep 0.01

      ARRAY[$i]=$backI
      ARRAY[$j]=$backJ

      let 'nbswitch = nbswitch + 1'

    fi
  done
done

printf "\n\n\n"
printf "Tableau après le tri : \n"
printf "%s " ${ARRAY[*]}
printf "\n\n\n"
printf "nombre de permutation : %s \n\n\n" ${nbswitch}
