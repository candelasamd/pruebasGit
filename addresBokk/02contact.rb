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

  #1) Añadimos esto
    def first_last
      first_name + " " + last_name
    end
  #1) Fin


  #2) Luego este otro
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
  #2) Fin

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

  #3) Sobreescribimos el to string
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
  end
  #3) Fin
  
  david = Contact.new
  david.first_name = "David"
  david.last_name = "Piqué"
  puts david.to_s
  puts david.to_s('full_name')
  puts david.to_s('last_first')
  
  anja = Contact.new
  anja.first_name = "Anja"
  anja.middle_name = "La"
  anja.last_name = "Barga"
  puts anja.to_s('first_last')