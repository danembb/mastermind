require './lib/message'
require './lib/sequence'

class Turn
  attr_reader :turn_number,
              :message,
              :sequence,
              :guess,
              :correct_positions

  def initialize(guess)
    @turn_number       = 0
    @message           = Message.new
    @sequence          = Sequence.new
    @guess             = guess
    @correct_positions = 0
  end

  def add_turn
    @turn_number += 1
  end

  def has_won?
    @guess == @supersecretcode
  end

  def compare_first_position
    if @guess[0] == sequence.supersecretcode[0]
      true
      @correct_positions += 1
    else
      false
    end
  end
end
