require './lib/game'


RSpec.describe Game do
  describe 'instantiation' do
    it '::new' do
      mastermind = Game.new

      expect(mastermind).to be_an_instance_of(Game)
    end
  end

  describe '#methods' do
    it '#can display a welcome message' do
      mastermind = Game.new
      mastermind.game_start
      
      expect(mastermind.welcome).to be('Welcome to MASTERMIND Would you like to (p)lay, read the (i)nstructions, or (q)uit?')
    end
  end
end
