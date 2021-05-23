require './lib/game'
require './lib/turn'

#Sat: Do we need this spec file if the game class file requires inputs
#and can't really be tested in the same way as other class files?
#... is the test file for game our runner file?
RSpec.describe Game do
  describe 'instantiation' do
    it '::new' do
      mastermind = Game.new
require "pry"; binding.pry
      expect(mastermind).to be_an_instance_of(Game)
    end
  end
end
