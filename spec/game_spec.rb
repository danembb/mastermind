require './lib/game'


RSpec.describe Game do
  describe 'instantiation' do
    it '::new' do
      mastermind = Game.new

      expect(mastermind).to be_an_instance_of(Game)
    end
  end

end
