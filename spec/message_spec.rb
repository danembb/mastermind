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
  end
end
