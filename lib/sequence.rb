class Sequence
  attr_reader :characters

  def initialize
    @characters = []
  end
  #do we need something to restrict its size
  def create
    @colors = ['r', 'r', 'r', 'r', 'g', 'g', 'g', 'g', 'b', 'b', 'b', 'b', 'y', 'y', 'y', 'y']
    # 4.times @characters << colors.sample
    @colors.sample(4).each do |color|
      @characters << color
    end
  end
end
