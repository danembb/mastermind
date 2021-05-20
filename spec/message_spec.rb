require './lib/message'

RSpec.describe Message do
  describe 'instantiation' do
    it '::new' do
      message = Message.new

      expect(message).to be_an_instance_of(Message)
    end
  end

  describe '#methods' do
    it '#can display a welcome message' do
      message = Message.new

      expect(message.welcome).to eq('Welcome to MASTERMIND')
    end

    it '#can display a welcome query' do
      message = Message.new

      expect(message.welcome_query).to eq('Would you like to (p)lay, read the (i)nstructions, or (q)uit?')
    end

    it '#can display instructions' do
      message = Message.new

      expected = "Goal: Correctly guess the codemaker's code.\n    The codemaker will generate a 4-character code sequence.\n    It is up to you to guess the correct sequence by inputting the correct colors (red, green, blue and yellow) in the correct order.\n    These colors are implemented in-game with the characters in the following chart (case-insensitive):\n    Red = 'r'\n    Green = 'g'\n    Blue = 'b'\n    Yellow = 'y'"

      expect(message.instructions).to eq(expected)
    end

    it '#can display an error message when there are too many characters' do
      message = Message.new

      expect(message.too_long).to eq('Oh no! You used too many characters!')
    end

    it '#can display an error message when there are not enough characters' do
      message = Message.new

      expect(message.too_short).to eq('Oh no! You did not use enough characters!')
    end

    it '#can display an error message when an invalid character is used' do
      message = Message.new

      expect(message.invalid_character).to eq('Huh? That does not look like a valid character...')
    end
  end
end
