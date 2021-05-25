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

  def has_won?#(input)
    @guess == @supersecretcode #can @guess just be input? #also change to display_code?
  end

  def compare_first_position
    if @guess[0] == sequence.supersecretcode[0] #display_code
      true
      @correct_positions += 1
    else
      false
    end
  end

  # def correct_positions(input)     #index only works on array so how can we convert input into an array?
  #   if input[0] == display_code[0] #supersecretcode
  #     correct += 1
  #   end
  #   if input[1] == display_code[1]
  #     correct += 1
  #   end
  #   if input[2] == display_code[2]
  #     correct += 1
  #   end
  #   if input[3] == display_code[3]
  #     correct += 1
  #   end
  #   return correct
  # end
end
