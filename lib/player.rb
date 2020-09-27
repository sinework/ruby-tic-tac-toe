class Player
  # This methods need to be accessed from the game class so both the writer and reader variables are needed
  attr_accessor :name, :key, :choice_array

  def initialize(name, key)
    @name = name
    @key = key
    @choice_array = []
  end
end
