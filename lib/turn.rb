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

  # def correct_positions(input)     #index only works on array so how can we convert input into an array?
  #   correct = 0
  # if guess[0] == supersecretcode[0]
  #     correct += 1
  #   end
  #   if input[1] == supersecretcode[1]
  #     correct += 1
  #   end
  #   if input[2] == supersecretcode[2]
  #     correct += 1
  #   end
  #   if input[3] == supersecretcode[3]
  #     correct += 1
  #   end
  #   return correct
  # end
end
