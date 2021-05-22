require 'rspec'
require './lib/sequence'
require './lib/turn'

RSpec.describe Turn do
 describe 'instantiation' do
   it '::new' do
     turn = Turn.new(['r','r', 'g', 'y'])

     expect(turn).to be_an_instance_of(Turn)
    end
  end

  describe '#methods' do
    it '#count turns' do
      turn = Turn.new(['r','r', 'g', 'y'])

      expect(turn.turn_number).to eq(0)
    end

    it '#can add a turn' do
      turn = Turn.new(['r','r', 'g', 'y'])
      turn.add_turn

      expect(turn.turn_number).to eq(1)
    end

    it '#has not won' do
      sequence = Sequence.new
      sequence.create
      turn = Turn.new(['r','r', 'g', 'y'])

      expect(turn.has_won?).to eq(false)
    end
    #can we use a mock instance?
    # @characters = ['r', 'r', 'r', 'r']
    it '#does not have the correct first position' do
      sequence = Sequence.new
      turn = Turn.new(['r','r', 'g', 'y'])
      sequence.create

      expect(turn.compare_first_position).to eq(false)
    end

  end
end
