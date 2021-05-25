require './lib/message'
require './lib/sequence'
require './lib/turn'
require './lib/stopwatch'

class Game
  attr_reader :message,
              :sequence,
              :turn,
              :stopwatch,
              :correct

  def initialize
    @message    = Message.new
    @sequence   = Sequence.new
    @turn       = Turn.new(['r','r', 'r', 'r'])
    @stopwatch  = Stopwatch.new
    @correct    = 0

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
      puts @message.invalid_character
      puts @message.instructions
      self.menu_flow(input = gets.chomp.downcase)
    end
    #Rock input: consider def .loop until valid? (not a boolean)
    # can we use a loop like:
    # until input.valid? do
    #   self.menu_flow(input = gets.chomp)
    # def valid?
    #   input == "p" || input == "play" || input == "i" || input == "instructions" || input == "q" || input == "quit"
    # end
  end

  def game_flow(input)
    # until self.guess_correct? == true do
    # until input == sequence.supersecretcode do
    #how can we create helper methods for each of these input.length..chomp.downcase)?
    if input == "c" || input == "cheat"
      puts @message.cheater
      puts @sequence.display_code
      self.game_flow(input = gets.chomp.downcase)
    elsif input == "q" || input == "quit"  #We have to run the quit command twice to exit
      puts @message.goodbye
    elsif input.length  >= 5
      puts @message.too_long
      self.game_flow(input = gets.chomp.downcase)
    elsif input.length <= 3
      puts @message.too_short
      self.game_flow(input = gets.chomp.downcase)
    elsif input.length == 4
      @turn.add_turn
      if input == @sequence.display_code
        puts "Congratulations you guessed the sequence #{@sequence.display_code} in #{@turn.turn_number} turns over #{@stopwatch.elapsed_minutes} minutes, #{@stopwatch.elapsed_seconds} seconds."
        puts @message.you_won_query
        self.end_game_flow(input = gets.chomp.downcase)
        #Should this message be here or can it be in the message class
        #If in the message class, then is it ok to require multiple files from there?

      elsif input != @sequence.display_code
        self.correct_positions(input)
        ##{correct_elements} = monkey
        puts "#{input} has monkey with #{@correct} in the correct positions."
        puts "You've taken #{@turn.turn_number} turns."
        @correct = 0
        self.game_flow(input = gets.chomp.downcase)
      end
    end
  end

  def end_game_flow(input)
    if input == "p" || input == "play"
      puts @message.play_flow
      self.game_flow(input = gets.chomp.downcase)
    elsif input == "q" || input == "quit"
      puts @message.goodbye
    else
      puts @message.end_game_error
      self.end_game_flow(input = gets.chomp.downcase)
    end
  end

  def guess_convert(input) #convert into array
    input.split("")
  end

  def correct_positions(input)     #index only works on array so how can we convert input into an array?
    if self.guess_convert(input)[0] == @sequence.supersecretcode[0]
      @correct += 1
    end
    if self.guess_convert(input)[1] == @sequence.supersecretcode[1]
      @correct += 1
    end
    if self.guess_convert(input)[2] == @sequence.supersecretcode[2]
      @correct += 1
    end
    if self.guess_convert(input)[3] == @sequence.supersecretcode[3]
      @correct += 1
    end
    return @correct
  end
end
