require 'rspec'
require './lib/sequence'
require './lib/turn'

RSpec.describe Turn do
 describe 'instantiation' do
   it '::new' do
     turn = Turn.new

     expect(turn).to be_an_instance_of(Turn)
   end

 end
end
