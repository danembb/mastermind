require 'rspec'
require './lib/sequence'
require './lib/turn'

RSpec.describe Turn do
 describe 'instantiation' do
   it '::new' do
     turn = Turn.new(['rrgy'])

     expect(turn).to be_an_instance_of(Turn)
   end

   it 'count turns' do
      turn = Turn.new(['rrgy'])

      expect(turn.turn_number).to eq(0)
   end

   it 'can add a turn' do
      turn = Turn.new(['rrgy'])
      turn.add_turn

      expect(turn.turn_number).to eq(1)
   end

    it 'has not won' do
      sequence = Sequence.new
      sequence.create
      turn = Turn.new(['rrgy'])

      expect(turn.has_won?).to eq(false)
    end

  end



end
