require 'rspec'
require './lib/sequence'

RSpec.describe Sequence do
  describe 'instantiation' do
    it '::new' do
      sequence = Sequence.new

      expect(sequence).to be_an_instance_of(Sequence)
    end

    it 'generates a code' do
      sequence = Sequence.new

      expect(sequence.create).to be_an_instance_of(Array)
      expect(sequence.create.length).to eq(4)
    end

  end
end
