require './lib/game'
require './lib/turn'
require './lib/sequence'

#Sat: Do we need this spec file if the game class file requires inputs
#and can't really be tested in the same way as other class files?
#... is the test file for game our runner file?
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

# @supersecretcode = ['r', 'r', 'r', 'r']
# sequence = Sequence.new
