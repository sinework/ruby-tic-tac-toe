class Player
 attr_accessor :name, :key , :choice_array
 
     def initialize (name, key)
         @name = name
         @key = key
         @choice_array = []
     end
 end   