#4) Cragamos la clase
require "./03phone_number"

class Contact
  attr_writer :first_name, :middle_name, :last_name
  #1) Añadimos el atributo
  attr_reader :phone_numbers
  #2) El constructor y cargarlo arriba 
  def initialize
    @phone_numbers = []
  end
  #3) Añadimos un método para añadir telefonos
  def add_phone_number(kind, number)
    phone_number = PhoneNumber.new
    phone_number.kind = kind
    phone_number.number = number
    phone_numbers.push(phone_number)
  end

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def first_last
    first_name + " " + last_name
  end

  def last_first
    last_first = last_name
    last_first += ", "
    last_first += first_name
    if !@middle_name.nil?
      last_first += " "
      last_first += middle_name.slice(0, 1)
      last_first += "."
    end
    last_first
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

  def to_s(format = 'full_name')
    case format
    when 'full_name'
      full_name
    when 'last_first'
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end
#5) metodo imprimir telefonos
  def print_phone_numbers
    puts "Teléfonos:"
    phone_numbers.each { |phone_number| puts phone_number }
  end
end

david = Contact.new
david.first_name = "David"
david.last_name = "Piqué"
david.add_phone_number("Casa", "123 456 7890")
david.add_phone_number("Pixelpro", "456 789 0123")
puts david.to_s('full_name')
david.print_phone_numbers#Muestra el tipo de número, por el to_s de la clase phone_number
