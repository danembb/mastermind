require './lib/message'

class Game
  attr_reader :message,
              :sequence,
              :user

  def initialize
    @message  = Message.new
    @sequence = Sequence.new
    # @user     = gets.chomp
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

  def game_flow(input)
    # until self.guess_correct? == true do
    until input == characters do
      if input == "c" || input == "cheat"
        puts @message.play_flow
        self.game_flow(input = gets.chomp)
      elsif input == "q" || input == "quit"
        puts self.end_game
      # elsif input >= 5
      #   puts @message.too_long
      # elsif input <= 3
      #   puts @message.too_short
      #   self.game_flow(input = gets.chomp)
      # elsif input.length == 4
        # turn.count += 1
        # guess_correct?
      end
      # elsif input.include != "q" || input.include != "i" || input.include != "r" || input.include != "b" || input.include != "g" || input.include != "y"
      #   puts @message.invalid_character
      #   puts @message.instructions
    end
  end


  # def play(gets.chomp)
  #   sequence.create
  #   puts message.
  #
  # end

end
