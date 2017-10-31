#La primera parte de nuestra aplicación de libreta de direcciones que abordaremos es crear una clase 
#para almacenar nuestros contactos. Como era de esperar, estamos llamando a esta la clase de contacto!

class Contact
    attr_writer :first_name, :middle_name, :last_name
  
    def first_name
      @first_name
    end
  
    def middle_name
      @middle_name
    end
  
    def last_name
      @last_name
    end
  
    def full_name
      full_name = first_name
      if !@middle_name.nil?
        full_name += " "
        full_name += middle_name
      end
      full_name += ' '
      full_name += last_name
      full_name
    end
  end
  
  david = Contact.new
  david.first_name = "David"
  david.last_name = "Piqué"
  puts david.full_name
  
  anja = Contact.new
  anja.first_name = "Anja"
  anja.middle_name = "La"
  anja.last_name = "Barga"
  puts anja.full_name