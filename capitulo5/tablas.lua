print("Ejemplo de Tablas como Listas")

lenguajes={"php","c","python","lua","javascript"}
tablaMixta={5,8,"Miguel",true}

print("Los datos de la Tabla Lenguajes")

for indice,valor in ipairs(lenguajes) do
    print(indice,valor)
end

tablaMixta[5]="Hernandez"
lenguajes[6]="perl"

print(lenguajes[4])
print(tablaMixta[3])
print("La cantidad de elementos de la tabla lenguajes es:")
print(#lenguajes)

table.insert( lenguajes,"dart")
print("La cantidad de elementos de la tabla lenguajes es:")
print(#lenguajes)

table.remove( lenguajes,2)
print("La cantidad de elementos de la tabla lenguajes es:")
print(#lenguajes)

table.sort(lenguajes)
print("***Mostrar lenguajes***")
 for indice,valor in ipairs(lenguajes) do
    print(indice,valor)
 end