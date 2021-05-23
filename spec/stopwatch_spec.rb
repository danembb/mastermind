require './lib/stopwatch'

RSpec.describe Stopwatch do
  describe 'instantiation' do
    it '::new' do
      stopwatch = Stopwatch.new
    end
  end

  describe '#methods' do
    it '#can display lapsed time' do
      stopwatch = Stopwatch.new

      expect(stopwatch.elapsed_time).to be_an_instance_of(Float)
    end

    it '#can display time lapsed in minutes' do
      stopwatch = Stopwatch.new

      expect(stopwatch.elapsed_minutes).to be_an_instance_of(Integer)
      expect(stopwatch.elapsed_minutes).to eq(0)
      #should we include this test for clarity?
      # sleep(60)

      #expect(stopwatch.elapsed_minutes).to eq(1)
    end

    it '#can display time lapsed in seconds' do
      stopwatch = Stopwatch.new

      expect(stopwatch.elapsed_seconds).to be_an_instance_of(Integer)
    end
  end
end
