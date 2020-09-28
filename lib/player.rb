class Player
  attr_accessor :name, :key, :choice_array

  def initialize(name, key)
    @name = name
    @key = key
    @choice_array = []
  end

   # Validating the user name

   def validate_name(name)
    if name.scan(/\D/).empty?

      false

    else

      true

    end
  end

  
 
end
