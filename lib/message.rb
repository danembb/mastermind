# require './lib/sequence'
# require './lib/turn'
# require './lib/stopwatch'

class Message
  # attr_reader :sequence,
  #             :turn,
  #             :stopwatch

  def initialize
    # @sequence = Sequence.new
    # @turn = Turn.new(['r','r', 'r', 'r'])
    # @stopwatch = Stopwatch.new
  end

  def welcome
    'Welcome to MASTERMIND'
  end

  def welcome_query
    'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
  end

  def instructions
    "Goal: Correctly guess the codemaker's code.
    The codemaker will generate a 4-character code sequence.
    It is up to you to guess the correct sequence by inputting the correct colors (red, green, blue and yellow) in the correct order.
    These colors are implemented in-game with the characters in the following chart (case-insensitive):
    Red = 'r'
    Green = 'g'
    Blue = 'b'
    Yellow = 'y'
    Enter (p)lay to play the game or (q)uit to quit!"
#add a line about cheating.
  end

  def too_long
    'Oh no! You used too many characters!'
  end

  def too_short
    'Oh no! You did not use enough characters!'
  end

  def menu_invalid_character
    'Huh? That does not look like a valid character...'
  end

  def game_invalid_character
    'Hey, those characters dont look like any code I have seen before...'
  end

  def play_flow
    "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def goodbye
    "Goodbye!"
  end

  def cheater
    "Well, alright. Here's the super secret sequence:"
  end

  def you_won(sequence, turn, stopwatch)
    "Congratulations you guessed the sequence #{sequence.display_code} in #{turn.turn_number} turns over #{stopwatch.elapsed_minutes} minutes, #{stopwatch.elapsed_seconds} seconds."
  end

  def you_won_query
    "Would you like to (p)lay again or (q)uit?"
  end

  def end_game_error
    "I do not know what that means! Please enter (p)lay or (q)uit."
  end
end
