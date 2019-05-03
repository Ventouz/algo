#!/bin/bash
clear

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
      echo -e " ${ARRAY[$i]} > ${ARRAY[$j]}"
      noswitch=1

      # permutation des valeurs
      temp=${ARRAY[$i]}
      ARRAY[$i]=${ARRAY[$j]}
      ARRAY[$j]=$temp

    fi
  done
done

echo "Tableau après le tri :"
echo -e "${ARRAY[*]}"
