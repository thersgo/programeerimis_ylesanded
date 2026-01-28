
io.write "Mis on teie nimi? "
print(("Tervist, %s!"):format(io.read"*line"))

io.write "Kus te elate? "
print(
	io.read"*line":lower():find "saarema"
		and "Kohalik, või?"
		or "Kõlab nagu tore koht :)"
)

io.write "Kui vana olete? "

local age = io.read"*number"
print(
	age < 18 and "Olete liiga noor, et autot juhtida :/"
	or age == 18 and "Palju õnne täisealiseks saamise puhul!"
	or "Olete ilmselt autojuhtimiseks õiges eas."
)
