require './lib/message'
require './lib/sequence'
require './lib/turn'
require './lib/stopwatch'

class Game
  attr_reader :message,
              :sequence,
              :turn,
              :stopwatch,
              :positions

  def initialize
    @message    = Message.new
    @sequence   = Sequence.new
    @turn       = Turn.new(['r','r', 'r', 'r'])
    @stopwatch  = Stopwatch.new
    @positions  = 0
  end

  def menu_flow(input)
    if input == "p" || input == "play"
      @sequence.create
      @stopwatch.start
      puts @message.play_flow
      self.game_flow(input = gets.chomp.downcase)
    elsif input == "i" || input == "instructions"
      puts @message.instructions
      self.menu_flow(input = gets.chomp.downcase)
    elsif input == "q" || input == "quit"
      puts @message.goodbye
    elsif input != "q" || input != "i" || input != "r" || input != "b" || input != "g" || input != "y"
      puts @message.menu_invalid_character
      puts @message.instructions
      self.menu_flow(input = gets.chomp.downcase)
    end
  end

  def game_flow(input)
    if input == "c" || input == "cheat"
      puts @message.cheater
      puts @sequence.display_code
      self.game_flow(input = gets.chomp.downcase)
    elsif input == "q" || input == "quit"
      puts @message.goodbye
    elsif input.length  >= 5
      puts @message.too_long
      self.game_flow(input = gets.chomp.downcase)
    elsif input.length <= 3
      puts @message.too_short
      self.game_flow(input = gets.chomp.downcase)
    elsif input.length == 4
      if input == @sequence.display_code
        @turn.add_turn
        puts @message.you_won(@sequence, @turn, @stopwatch)
        puts @message.you_won_query
        self.end_game_flow(input = gets.chomp.downcase)
      #Tues: Trying to implement invalid game characters error message. DELETE BEFORE SUBMISSION
      # elsif input != @sequence.display_code && self.guess_convert(input).include?("r" || "b" || "y" || "g") #!= "r" || input != "b" || input != "y" || input != "g" || input != "q" || input != "c"
      #   puts @message.game_invalid_character
      #   self.game_flow(input = gets.chomp.downcase)
      elsif input != @sequence.display_code
        @turn.add_turn
        self.correct_positions(input)
        puts "#{input} has #{correct_elements(input)} correct elements with #{positions} in the correct positions."
        puts "You've taken #{turn.turn_number} turns."
        @positions = 0
        self.game_flow(input = gets.chomp.downcase)
      end
    end
  end

  def end_game_flow(input)
    if input == "p" || input == "play"
      @sequence.refresh
      @turn.turn_refresh
      @sequence.create
      puts @message.play_flow
      self.game_flow(input = gets.chomp.downcase)
    elsif input == "q" || input == "quit"
      puts @message.goodbye
    else
      puts @message.end_game_error
      self.end_game_flow(input = gets.chomp.downcase)
    end
  end

  def guess_convert(input)
    input.split("")
  end

  def correct_positions(input)
    if self.guess_convert(input)[0] == @sequence.supersecretcode[0]
      @positions += 1
    end
    if self.guess_convert(input)[1] == @sequence.supersecretcode[1]
      @positions += 1
    end
    if self.guess_convert(input)[2] == @sequence.supersecretcode[2]
      @positions += 1
    end
    if self.guess_convert(input)[3] == @sequence.supersecretcode[3]
      @positions += 1
    end
    return @positions
  end

  def correct_elements(input)
    @elements = 0
    local_supersecretcode = @sequence.supersecretcode.dup
    self.guess_convert(input).each do |element|
      if local_supersecretcode.include? element
        @elements += 1
        local_supersecretcode.delete_at(local_supersecretcode.index(element))
      end
    end
    @elements
  end
end
