year = input("Saisissez une annee :")

status = False
int(year)
print(year)






if year % 4 == 0:
	if year % 100 == 0:
		if year % 400 == 0:
			status = True
		else:
			status = False
	else:
		status = True


if status == True:
	print(year, "est bissextile")
else:
	print(year, "n'est pas bissextile")

