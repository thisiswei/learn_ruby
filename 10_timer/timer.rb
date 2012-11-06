class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    time_left  = @seconds%3600
    "%.2d:%.2d:%.2d" % [hours, time_left/60, time_left%60]
  end
end
