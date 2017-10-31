require './address_book'



def ask (question, kind="string") #forzamos valor por defecto del parametro
    print question + " "
    answer= gets.chomp
    answer= answer.to_i if kind=="number"
    return answer
end


address_book = AddressBook.new

loop do
    puts "-" *50
    puts "Operativa de la agenda disponible:"
    puts "a: Añadir contacto"
    puts "p: Mostrar contactos"
    puts "b: Buscar contacto"
    puts "s: Salir"
    puts "-" *50
    operativa= ask ("Selecciona operativa: (s para salir)")
    puts "-" *50

    case  operativa
    when 's'
        address_book.save()
        puts "Gracias por usar esta agenda. Te esperamos."
        break
    when 'a'
        newContacto = Contact.new
        newContacto.first_name = ask ("Nombre:")
        newContacto.last_name = ask ("Apellido:")
        answer="s"
        loop do
            puts "Introduce telefono? (s/n)"
            answer=gets.chomp
            if  answer=="n" 
                break
            end
            id_telefono=ask("identificador del telefono?")
            num_telefono=ask("numero del telefono?")
            newContacto.add_phone_number(id_telefono, num_telefono)
        end
        newContacto.add_address("Casa", "Los robles 17", "", "Guadalix", "MA", "12345")
        address_book.contacts.push(newContacto)
    when 'b'
    when 'p'
        address_book.print_contact_list
    else
        puts "---->>>> Elige una opcion correcta <<<<----"
    end

end

