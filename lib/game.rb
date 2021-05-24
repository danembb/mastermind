require './lib/message'
require './lib/sequence'
require './lib/turn'
require './lib/stopwatch'

class Game
  attr_reader :message,
              :sequence,
              :turn,
              :stopwatch
              # :user

  def initialize
    @message  = Message.new
    @sequence = Sequence.new
    @turn = Turn.new(['r','r', 'r', 'r'])
    @stopwatch = Stopwatch.new
    # @user     = gets.chomp
  end

  def menu_flow(input)
    #why does '' give a warning, but "" doesnt?
    #why use self?
    if input == "p" || input == "play"
      @sequence.create
      #Sat: is this starting the timer here or is the timer starting when the game is initiated?
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
    elsif input == "q" || input == "quit"
      puts @message.goodbye
    elsif input.length  >= 5
      puts @message.too_long
      self.game_flow(input = gets.chomp.downcase)
    elsif input.length <= 3
      puts @message.too_short
      self.game_flow(input = gets.chomp.downcase)
    #Sat: What is @sequence.supersecretcode here and why (when input correctly) isn't it congratulating?
    elsif input.length == 4
      @turn.add_turn
      puts "we are on #{@turn.turn_number}"
      # puts @sequence.supersecretcode
      if input == @sequence.display_code
        puts "I am a banana"
        puts "Congratulations you guessed the sequence #{@sequence.display_code} in #{@turn.turn_number} turns over #{@stopwatch.elapsed_minutes} minutes, #{@stopwatch.elapsed_seconds} seconds."
        puts @message.you_won_query
        self.end_game_flow(input = gets.chomp.downcase)
        #Should this message be here or can it be in the message class
        #If in the message class, then is it ok to require multiple files from there?

        #if input != @sequence.display_code
          #then message.partial_correct: "#{input} has #{correct_elements} with #{correct_positions} in the correct positions."
        #elsif true
          #then "congrats"
        # elsif has any amount of correct_positions
        
        #   message.partial_correct: "#{input} has #{correct_elements} with #{correct_positions} in the correct positions."
        #   puts "You've taken #{@turn.turn_number} turns."
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
end
