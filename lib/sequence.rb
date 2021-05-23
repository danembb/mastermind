class Sequence
  attr_reader :supersecretcode

  def initialize
    @supersecretcode = []
  end
  #do we need something to restrict its size
  def create
    @colors = ['r', 'r', 'r', 'r', 'g', 'g', 'g', 'g', 'b', 'b', 'b', 'b', 'y', 'y', 'y', 'y']
    # 4.times @characters << colors.sample
    @colors.sample(4).each do |color|
      @supersecretcode << color
    end
  end

  def display_cheat
    @supersecretcode.join("")
  end
end
