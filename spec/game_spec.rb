require './lib/game'
require './lib/turn'
require './lib/sequence'

RSpec.describe Game do
  describe 'instantiation' do
    it '::new' do
      mastermind = Game.new

      expect(mastermind).to be_an_instance_of(Game)
    end
  end

  describe 'methods' do
    it 'can convert user string into an array' do
      mastermind = Game.new
      input = "rrrr"

      expect(mastermind.guess_convert(input)).to be_an_instance_of(Array)
    end
  end
end
