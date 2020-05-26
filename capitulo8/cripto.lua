simbolos="!|&]#$[<(%{>*/;@}:-?+=.,_(^"
alfabeto="abcdefghijklmonpqrstuvwxyz "

frase="Lua es Genial para aprender a programar"

function encriptar(palabra)
    local l=""
    local texto=string.lower( palabra )
    for i=1,string.len( texto ) do
        local letra = string.sub( texto, i,i )
        local p,f= string.find( alfabeto,letra )
        if p~=nil then
            local simbolo=string.sub(simbolos,p,f)
            l=l..simbolo
        end
    end
    return l
end

function desencriptar(palabra)
    local l=""
    local texto=string.lower( palabra )
    for i=1,string.len( texto ) do
        local letra = string.sub( texto, i,i )
        local p,f= string.find( simbolos,"%"..letra )
        if p~=nil then
            local simbolo=string.sub(alfabeto,p,f)
            l=l..simbolo
        end
    end
    return l
end

encriptado= encriptar(frase)
print(encriptado)


desencriptado= desencriptar(encriptado)
print(desencriptado)