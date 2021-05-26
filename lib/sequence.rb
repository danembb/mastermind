class Sequence
  attr_reader :supersecretcode

  def initialize
    @supersecretcode = []
  end

  def create
    colors = ['r', 'b', 'g', 'y']
    4.times {@supersecretcode << colors.sample}
  end

  def display_code
    @supersecretcode.join("")
  end

  def refresh
    @supersecretcode = []
  end
end
