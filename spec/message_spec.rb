require './lib/message'
require './lib/turn'
require './lib/stopwatch'
require './lib/sequence'

RSpec.describe Message do
  describe 'instantiation' do
    it '::new' do
      message = Message.new

      expect(message).to be_an_instance_of(Message)
    end
  end

  describe 'methods' do
    it 'can display a welcome message' do
      message = Message.new

      expect(message.welcome).to eq("Welcome to MASTERMIND\n    ")
    end

    it 'can display a welcome query' do
      message = Message.new

      expect(message.welcome_query).to eq('Would you like to (p)lay, read the (i)nstructions, or (q)uit?')
    end

    it 'can display instructions' do
      message = Message.new

      expected = "Goal: Correctly guess my code.\n    I will generate a 4-character code sequence.\n    It is up to you to guess the correct sequence by inputting the correct colors (red, green, blue and yellow) in the correct order.\n    These colors are implemented in-game with the characters in the following chart (case-insensitive):\n    Red = 'r'\n    Green = 'g'\n    Blue = 'b'\n    Yellow = 'y'\n    You may be able to (c)heat while playing, too. But what fun is that?\n    Enter (p)lay to play the game or (q)uit to quit!"

      expect(message.instructions).to eq(expected)
    end

    it 'can display an error message when there are too many characters' do
      message = Message.new

      expect(message.too_long).to eq('Oh no! You used too many characters!')
    end

    it 'can display an error message when there are not enough characters' do
      message = Message.new

      expect(message.too_short).to eq('Oh no! You did not use enough characters!')
    end

    it 'can display an error message when an invalid character is used in-menu' do
      message = Message.new

      expect(message.menu_invalid_character).to eq('Huh? That does not look like a valid character...')
    end

    it 'can display an error message when invalid characters are used in-game' do
      message = Message.new

      expect(message.game_invalid_character).to eq('Hey, those characters dont look like any code I have seen before...')
    end

    it 'can display play_flow_message' do
      message = Message.new
      expected = "I have generated a beginner sequence with four elements made up of: (r)ed,\n    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\n    What's your guess?"

      expect(message.play_flow).to eq(expected)
    end

    it 'can display a goodbye message when user quits' do
      message = Message.new

      expect(message.goodbye).to eq("Goodbye!")
    end

    it 'can display a message if the user wants to be a dirty cheater' do
      message = Message.new

      expect(message.cheater).to eq("Well, alright. Here's the super secret sequence:")
    end

    it 'can display a query message when the user has won' do
      message = Message.new

      expect(message.you_won_query).to eq("Would you like to (p)lay again or (q)uit?")
    end

    it 'can display an error when there is incorrect input at end of game' do
      message = Message.new

      expect(message.end_game_error).to eq("I do not know what that means! Please enter (p)lay or (q)uit.")
    end
  end
end
