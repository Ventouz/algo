nb = input("Entrez un nombre HEX : ")

result = ""
str(result)

for element in nb:
    if element in "0":
        result = result + " 0000"
    elif element in "1":
        result = result + " 0001"
    elif element in "2":
        result = result + " 0010"
    elif element in "3":
        result = result + " 0011"
    elif element in "4":
        result = result + " 0100"
    elif element in "5":
        result = result + " 0101"
    elif element in "6":
        result = result + " 0110"
    elif element in "7":
        result = result + " 0111"
    elif element in "8":
        result = result + " 1000"
    elif element in "9":
        result = result + " 1001"
    elif element in "A":
        result = result + " 1010"
    elif element in "B":
        result = result + " 1011"
    elif element in "C":
        result = result + " 1100"
    elif element in "D":
        result = result + " 1101"
    elif element in "E":
        result = result + " 1110"
    elif element in "F":
        result = result + " 1111"

print("Nombre converti :")
print(result)
