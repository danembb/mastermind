require './lib/message'
require './lib/sequence'

class Turn
  attr_reader :turn_number,
              :message,
              :sequence

  def initialize(guess)
    @turn_number       = 0
    @message           = Message.new
    @sequence          = Sequence.new
  end

  def add_turn
    @turn_number += 1
  end

  def turn_refresh
    @turn_number = 0
  end
end
