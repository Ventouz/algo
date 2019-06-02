texte = input("Veuillez entrer un mot : ")

for element in texte:
	if element in "AEUIOYaeyuio":
		print(element, " est une voyelle")
	else:
		print(element, "n'est pas une voyelle")
