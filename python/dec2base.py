CHARS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]
RESULTAT = ""
str(RESULTAT)

NB = int(input("Entrez un nombre DEC : "))
BASE = int(input("Entrez une BASE :"))

while NB != 0:
    RESTE = NB % BASE
    NB = NB // BASE
    RESULTAT = CHARS[RESTE] + RESULTAT

print("Resultat :")
print(RESULTAT)
