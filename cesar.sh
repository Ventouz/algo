#!/bin/bash
clear

### VARIABLES
ALPHA=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
i=0
bgRed=$(tput setab 1) # red
bgGreen=$(tput setab 2) # green
bgYellow=$(tput setab 3) # yellow
fgBLack=$(tput setaf 0) # black
txStandout=$(tput smso)   # standout
txReset=$(tput sgr0)   # reset attributes

if [[ $1 = --debug ]]; then
  debug=1
fi

# Saisie du mot à transformer
printf "Veuillez saisir le mot à transformer :\n"
read INPUT

# Saisie du code
printf "\n\n"
printf "Veuillez saisir le code de transormation :\n"
printf "(nombre entier positifi ou négatif)\n"
read CODE

if [[ $debug = 1 ]]; then
  printf  "Variable CODE = %s\n" $CODE
fi


# Transformer la variable INPUT en tableau
while [ $i -lt ${#INPUT} ]; do
  ARRAY[$i]=${INPUT:$i:1}
  let "i = i + 1"
done

# Determiner la longueur du tableau -1
let "imax = ${#ARRAY[@]} - 1"

if [[ $debug = 1 ]]; then
  printf "Variable imax = %s\n" $imax
fi

for (( i = 0; i <= imax; i++ )); do

  if [[ $debug = 1 ]]; then
    printf "Variable i = %s\n" $i
    sleep 0.1
  fi

  for (( j = 0; j <= 26; j++ )); do

    if [[ $debug = 1 ]]; then
      printf "Variable j = %s\n" $j
      printf "Variable ARRAY[i] = %s\n" ${ARRAY[$i]}
      printf "Variable ALPHA[j] = %s\n" ${ALPHA[$j]}
      sleep 0.1
    fi

    # CHERCHE SI MATCH ENTRE LETTRE SAISIE ET ALPHABET
    if [[ ${ARRAY[$i]} = ${ALPHA[$j]} ]]; then

      if [[ $debug = 1 ]]; then
        printf "%s%sMATCH ! %s = %s %s\n" $bgGreen $fgBLack ${ARRAY[$i]} ${ALPHA[$j]} $txReset
        sleep 0.1
      fi


      let "x = j + CODE"
      let "x = x % 26"

      if [[ $debug = 1 ]]; then
        printf "x = %s\n" $x
        sleep 0.1
      fi

      if [[ $x < 0 ]]; then
        let "x = x + 26"
      fi
      j=26
      ARRAY[$i]=${ALPHA[$x]}
    fi
  done
done

printf "\n\n\n"
printf "RESULTAT : \n"
printf "%s " ${ARRAY[*]}
printf "\n\n\n"
