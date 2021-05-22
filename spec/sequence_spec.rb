require 'rspec'
require './lib/sequence'

RSpec.describe Sequence do
  describe 'instantiation' do
    it '::new' do
      sequence = Sequence.new

      expect(sequence).to be_an_instance_of(Sequence)
    end
  end

  describe '#methods' do
    it '#generates a code' do
      sequence = Sequence.new

      expect(sequence.create).to be_an_instance_of(Array)
      expect(sequence.create.length).to eq(4)
    end

    it '#can display the super secret code' do
      sequence = Sequence.new
      sequence.create

      expect(sequence.display_cheat).to be_an_instance_of(Array)
    end
  end
end
