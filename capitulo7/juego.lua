numero_secreto=0
intentos=10
numero=0
function juego()
    io.write("Te Quedan: ",intentos," intentos")
    print("\nIndica un numero entre 1 y 1000")
    numero=io.read()
    verifica()
end

function verifica()
    local n=tonumber(numero)
    if n==nil then
        mensajeError("Ingrese un Numero entre 1 y 1000")
    elseif n<0 and n>1000 then
        mensajeError("Ingrese un Numero entre 1 y 1000")
    else
        if n==numero_secreto then
            print("GANASTE")
            guardarEstadisticas(true)
            estado=0
        else
            if n<numero_secreto then
                print("+++ MAS +++")
            else
                print("--- MENOS ---")
            end
        end
        intentos=intentos-1
        if intentos==0 then
            print("Mision fallida!!!!")
            guardarEstadisticas(false)
            estado=0
        end
        io.write("pulsa enter para otro intento")
        io.read()
    end
end

function guardarEstadisticas(gano)
    
    local datos={}
    local f=io.open("estadisticas.txt")
    for linea in f:lines() do
        table.insert( datos,tonumber(linea) )
    end
    f:close()
    datos[1]=datos[1]+1
    if gano then
        datos[2]=datos[2]+1
    else
        datos[3]=datos[3]+1
    end

    local f=io.open("estadisticas.txt","w+")
    f:write(datos[1],"\n")
    f:write(datos[2],"\n")
    f:write(datos[3],"\n")
    f:close()
end