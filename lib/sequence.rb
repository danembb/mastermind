class Sequence
  attr_reader :characters

  def initialize
    @characters = []
  end

  def create
    @colors = ['r', 'g', 'b', 'y']
    # 4.times @characters << colors.sample
    @colors.sample(4).each do |color|
      @characters << color
    end
  end
end
