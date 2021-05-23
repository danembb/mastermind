require './lib/stopwatch'

RSpec.describe Stopwatch do
  describe 'instantiation' do
    it '::new' do
      stopwatch = Stopwatch.new()
    end
  end
end
