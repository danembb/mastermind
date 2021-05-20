class Message

  def initialize
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
    Yellow = 'y'"
#add a line about cheating.
  end

  def too_long
    'Oh no! You used too many characters!'
  end

  def too_short
    'Oh no! You did not use enough characters!'
  end

  def invalid_character
    'Huh? That does not look like a valid character...'
  end
end
