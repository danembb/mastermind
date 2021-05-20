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
  end
end
