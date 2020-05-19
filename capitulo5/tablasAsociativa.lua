print("TABLAS ASOCIATIVAS")

misdatos={}
misdatos["nombre"]="Miguel"
misdatos["apellidos"]="Hernandez"

print(#misdatos)
print(misdatos.nombre,misdatos.apellidos)
edad=35
table.insert( misdatos, edad)

for clave,valor in pairs(misdatos) do
    print(clave,"=>",valor)
end