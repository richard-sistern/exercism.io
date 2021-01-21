class Microwave
  def initialize(time)
    @minutes, @seconds = time.divmod(100)
    overflow, @seconds = @seconds.divmod(60)
    @minutes += overflow
  end

  def timer
    "%<minutes>.2d:%<seconds>.2d" % [minutes: @minutes, seconds: @seconds]
  end
end

if $PROGRAM_NAME == __FILE__
  p Microwave.new(59).timer
  p Microwave.new(272).timer
  p Microwave.new(1001).timer
end
