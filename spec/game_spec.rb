require './lib/game'


RSpec.describe Game do
  describe 'instantiation' do
    it '::new' do
      mastermind = Game.new

      expect(mastermind).to be_an_instance_of(Game)
    end
  end

  # describe '#methods' do
  #   it '#can begin' do
  #     mastermind = Game.new
  #
  #     expect(mastermind.intiate).to eq()
  #   end
  # end
end
