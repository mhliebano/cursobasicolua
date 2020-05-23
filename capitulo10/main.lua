--Garantizo la pseudoAleatoriedad de las varibles con random
math.randomseed( os.time() )
require("ui")
require("juegoescalera")
require("frases")



--Manejo los estados del juego para las diferentes vistas
--0 menu principal, 1 escalera
estados=1
while true do
    head()
    if estados==1 then
        juegoEscalera()
        seleccionaCasilla()
    end
    --v=io.read()
    if v=="q" then
        os.exit(0)
    end
    
end