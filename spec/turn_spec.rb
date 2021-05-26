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

  describe 'methods' do
    it 'count turns' do
      turn = Turn.new(['r','r', 'g', 'y'])

      expect(turn.turn_number).to eq(0)
    end

    it 'can add a turn' do
      turn = Turn.new(['r','r', 'g', 'y'])
      turn.add_turn

      expect(turn.turn_number).to eq(1)
      turn.add_turn
      turn.add_turn

      expect(turn.turn_number).to eq(3)
    end

    it 'can refresh the turn number for a new game' do
      sequence = Sequence.new
      turn = Turn.new(['r','r', 'g', 'y'])
      sequence.create
      turn.turn_refresh

      expect(turn.turn_number).to eq(0)
    end
  end
end
