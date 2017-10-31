class MiNombre
=begin
    attr_reader :title, :first_name, :middle_name, :last_name
    attr_writer :first_name
    attr_accessor :last_name
=end
    attr_accessor :title, :first_name, :middle_name, :last_name

    def initialize(title,first_name,middle_name,last_name)
        # las porpiedades de esta clase se declaran/usan con @
        @title=title
        @first_name=first_name
        @middle_name=middle_name
        @last_name=last_name
    end

    def title=(new_title)
        #no usamos attr_ porque queremos hacer un procesmiento con el valor asignado
        #esta definicion sobreescribe a la propiedad definida por attr 
        @title="Dr." if new_title=="Doctor"
        @title=new_title if new_title!="Doctor"
    end

    def full_name
        @first_name + " " + @middle_name + " " + @last_name
    end
    def full_name_title
        @title + " " + @first_name + " " + @middle_name + " " + @last_name
    end

    def to_s
       #sobreesctibimos el to_s, usado por ejemplo en puts mivariable
       full_name_title
    end
end
   
name =MiNombre.new("Sr.","Ramón","Arnao","López")
puts name
puts name.class
puts name.inspect
puts name.title
puts name.first_name
puts name.middle_name
puts name.last_name
name.title="Doctor"
name.first_name = "Pepe"
name.last_name= "Olmedo"
puts name.title
puts name.first_name
puts name.middle_name
puts name.last_name
puts name.full_name
puts name.full_name_title
