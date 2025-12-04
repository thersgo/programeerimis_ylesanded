
data = {
	"first name":     "Henri",
	"last name":      "Kangro",
	"birthyear":       2005,
	"spoken language": "EE",
	"coding language": "Lua"
}

print("spoken language:", data.get("spoken language"))
print("spoken language:", data["spoken language"])

data["coding language"] = "Go"

print()

for k in data.keys():
	print(k)

print()

for v in data.values():
	print(v)

print("data contains `id`:", "id" in data)

data["field count"] = len(data)

del data["birthyear"]
