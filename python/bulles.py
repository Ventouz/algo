#!/usr/bin/python
import time

SERIE = input("Entrez serie de chiffres pour le tri :")
LISTE = list(SERIE)
noswitch = 1
imax = len(LISTE) - 1


while noswitch == 1 :

  noswitch = 0
  i = 0
  j = 1

  while i < imax:

    if LISTE[i] > LISTE[j]:
        noswitch = 1
        LISTE[i],LISTE[j] = LISTE[j],LISTE[i]
        print(*LISTE, sep = " ")

    i += 1
    j = i + 1
    time.sleep ( 0.1 )
