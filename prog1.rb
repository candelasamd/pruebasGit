
def ask (question, kind="string") #forzamos valor por defecto del parametro
    print question + " "
    answer= gets.chomp
    answer= answer.to_i if kind=="number"
    return answer
end

def mas_telefonos(lista_telefonos)
    answer="s"
    loop do
        puts "Introduce otro telefono? (s/n)"
        answer=gets.chomp
        if  answer=="n" 
            break
        end
        lista_telefonos+=[ask("telefono?","number")]
        #lista_telefonos.push(ask("telefono?","number"))
    end
    #puts lista_telefonos
    return lista_telefonos
end
# creamos has con dos clves nombe= strin y telefono=array
#añadimos el nombre con el metodo ask y el telefono
#meter un loop para ver si tiene mas telefonos
contact_list=[]
loop do
    nombre= ask ("Introduce nombre de contacto? (s para salir)")
    
    if  nombre=="s" 
        break
    end
    telefono= ask("telefono?","number")
    lista_telefonos=[telefono]
    #contact_list+=[{"nombre"=>nombre,"telefonos"=>mas_telefonos(lista_telefonos)}]
    contact_list.push({"nombre"=>nombre,"telefonos"=>mas_telefonos(lista_telefonos)})
end

contact_list.each do |contacto|
    puts "El contacto registrado es #{contacto}"
    puts "Nombre: #{contacto["nombre"]}"
    if contacto["telefonos"].size > 0
      contacto["telefonos"].each do |phone_number|
        puts "Teléfono: #{phone_number}"
      end
    end
    puts "--------------------\n"
end
