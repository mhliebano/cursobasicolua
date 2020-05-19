require "ui"
require "juego"
math.randomseed(os.time())
run =true
estado=0

while run do
    
    os.execute("clear")
    encabezado()
    if estado==0 then
        menu()
    elseif estado==1 then
        juego()
    end
    
   
end
