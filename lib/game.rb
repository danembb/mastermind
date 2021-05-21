require './lib/message'

class Game
  attr_reader :message

  def initialize
    @message = Message.new
  end

  def menu_flow(input)
    #why does '' give a warning, but "" doesnt?
    #why use self?
    if input == "p" || input == "play"
      puts @message.play_flow
    elsif input == "i" || input == "instructions"
      puts @message.instructions
      self.menu_flow(input = gets.chomp)
    elsif input == "q" || input == "quit"
      puts self.end_game
    elsif input != "q" || input != "i" || input != "r" || input != "b" || input != "g" || input != "y"
      puts @message.invalid_character
      puts @message.instructions
      self.menu_flow(input = gets.chomp)
    end
    #Rock input: consider def .loop until valid? (not a boolean)
    # can we use a loop like:
    # until input.valid? do
    #   self.menu_flow(input = gets.chomp)
    # def valid?
    #   input == "p" || input == "play" || input == "i" || input == "instructions" || input == "q" || input == "quit"
    # end
  end

  #def in_game_error_check
  # if gets.chomp.length >= 5
  #   return message.too_long
  # elsif gets.chomp.length <= 3
  #   return message.too_short
  # elsif gets.chomp != p || q || i || c || r || b || g || y
  #   return message.invalid_character

end
