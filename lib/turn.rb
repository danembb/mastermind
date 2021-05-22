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
    @guess == @characters
  end

  def compare_first_position
    if @guess[0] == sequence.characters[0]
      true
      @correct_positions += 1
    else
      false
      require 'pry'; binding.pry
    end
  end

end


  # def guess
  #   if input >= 5
  #     puts @message.too_long
  #   elsif input <= 3
  #     puts @message.too_short
  #     self.game_flow(input = gets.chomp)
  #   elsif input.length == 4 && @characters
  #     add_turn.message_try_again
  #   end
  #
  # end

  # def valid_input(gets.chomp)
  #   if input >= 5
  #     puts @message.too_long
  #   elsif input <= 3
  #     puts @message.too_short
  #   elsif input.length == 4
  #     true
  #   end
  # end


  # def length_long
  #   game.user.length >= 5
  # end
