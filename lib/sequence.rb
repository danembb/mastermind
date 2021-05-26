class Sequence
  attr_reader :supersecretcode

  def initialize
    @supersecretcode = []
  end

  def create
    @colors = ['r', 'r', 'r', 'r', 'g', 'g', 'g', 'g', 'b', 'b', 'b', 'b', 'y', 'y', 'y', 'y']
    #DELETE BEFORE SUBMISSION
    # 4.times { @supersecretcode << colors.sample }
    @colors.sample(4).each do |color|
      @supersecretcode << color
    end
  end

  def display_code
    @supersecretcode.join("")
  end

  def refresh
    @supersecretcode = []
  end
end
