fecha=os.date("*t")
hoy=fecha.day.."/"..fecha.month.."/"..fecha.year
lenguajes={}
function encabezado( ... )
    print("****************************")
    print("*  JUEGO DEL MAS O MENOS   *")
    print("****************************")
    print("Hoy es: ",hoy)    
end
function menu()
    print("\n--- Menu de Opciones ---")
    print("1) Jugar")
    print("2) Estadisticas")
    print("3) Acerca de..")
    print("4) Salir")
    io.write("$opcion > ")
    local entrada= io.read()
    if entrada=="1" then
        os.execute("clear")
        estado=1
        numero_secreto=math.random( 1,1000 )
        intentos=10
    elseif entrada=="2" then
        mostrarEstadisticas()
    elseif entrada=="3" then
        mostrarAcerca()
    elseif entrada=="4" then
        os.exit(0)
    else
        mensajeError("OPCION NO VALIDA")
    end
end

function mensajeError(mensaje)
    print("------------------------")
    print(mensaje)
    print("------------------------")
    print("pulse enter para continuar...")
    io.read()
end

function mostrarEstadisticas()
    local datos={}
    encabezado()
    local f=io.open("estadisticas.txt")
    for linea in f:lines() do
        table.insert( datos,linea )
    end
    print("\nESTADISTICAS")
    print("Partidas Jugadas",datos[1])
    print("Partidas Ganadas",datos[2])
    print("Partidas Perdidas",datos[3])
    print("\npulse enter para continuar...")
    io.read()
end

function mostrarAcerca()
    encabezado()
    local f=io.open("acerca.txt")
    local texto=f:read("*a")
    f:close()
    print(texto)
    print("pulse enter para continuar...")
    io.read()
end