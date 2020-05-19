--costo=tb+(tkm*0.5)+(tmi*0.3)
tarifas={tb=12,tkm=0.5,tmi=0.3}
sitios={"Sector 1","Sector 2","Sector 3", "Sector 4"}
parametros={
    s1={
        s2={d=8,t=12},
        s3={d=25,t=110},
        s4={d=74,t=80}
    },
    s2={
        s1={d=8,t=12},
        s3={d=15,t=32}
    }
}
ejecucion=true

function mostrarSectores()
    for i=1,#sitios do
        print(i..")"..sitios[i])
    end
end

function calculaCosto(origen,destino)
    local costo=0
    local codigoOrigen = codigos(origen)
    local codigoDestino= codigos(destino)
    local d=parametros[codigoOrigen][codigoDestino].d
    local t=parametros[codigoOrigen][codigoDestino].t
    costo=tarifas.tb+(tarifas.tkm*d)+(tarifas.tmi*t)
    return costo
end

function codigos(numero_sector)
    return "s"..numero_sector
end

while ejecucion do
    print("*************************")
    print("Tarifas de Entregas")
    print("*************************")
    print("Seleccion sector de origen")
    mostrarSectores()
    local origen=io.read()
    print("Seleccion sector de destino")
    mostrarSectores()
    local destino=io.read()

    print("desde:"..sitios[tonumber(origen)])
    print("hasta:"..sitios[tonumber(destino)])
    print("El costo es",calculaCosto(origen,destino))
    if(origen=="0") then
        ejecucion=false
    end

end


