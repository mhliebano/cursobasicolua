escaleras={nivel=15,bomba=math.random( 1,3 )}
function juegoEscalera()
    escalerasIuTablero()
end
function colocaBomba()
    escaleras.bomba=math.random( 1,3 )
    escaleras.nivel=escaleras.nivel-1
end
function validaEntrada(n)
    assert(tonumber(n),"Por Favor Indica un Numero Entero entre [1 y 3]")
    local a=tonumber(n)
    assert(a>0 and a<4,"Por Favor Indica un Numero Entero entre [1 y 3]")
    return a
end
function seleccionaCasilla()
    io.write("Cual es tu elección (1,2 o 3) $> ")
    local s= io.read()
    local e,m=pcall(validaEntrada,s)
    if e then
        if m==escaleras.bomba then
            print("perdiste")
        else
            print(" ^(..)^", frases[math.random(1,#frases)])
        end
        pausa()
        colocaBomba()
    else
        print(m)
        pausa()
    end
end
function escalerasIuTablero()
    print(string.rep("-",49))
    for i=1,15 do
        if escaleras.nivel==i then
            io.write(i.."|\t-\t|\t-\t|\t-\t|","<== {o . o}","\n")
        elseif escaleras.nivel>i then
            io.write(i.."|\t?\t|\t?\t|\t?\t|","\n")
        else
            io.write(i.."|\t \t|\t \t|\t \t|","\n")
        end
        print(string.rep("-",49))
    end
    --print(string.rep("-",25))
end