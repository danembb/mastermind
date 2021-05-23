class Stopwatch

  def initialize
    @start = Time.now
  end

  def elapsed_time
    now = Time.now
    elapsed = (now - @start).round(2)
  end

  def elapsed_minutes
    (elapsed_time/60).round(0)
  end

  def elapsed_seconds
    (elapsed_time % 60).round(0)
  end
end
