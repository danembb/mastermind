class Turn
  attr_reader :turn_number
  def initialize
    @turn_number = 0
  end

  def add_turn
    @turn_number += 1
  end
end
