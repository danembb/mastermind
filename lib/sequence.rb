class Sequence
  attr_reader :characters

  def initialize
    @characters = []
  end

  def create
    @colors = ['r', 'r', 'r', 'r', 'g', 'g', 'g', 'g', 'b', 'b', 'b', 'b', 'y', 'y', 'y', 'y']
    # 4.times @characters << colors.sample
    @colors.sample(4).each do |color|
      @characters << color
    end
  end
end
