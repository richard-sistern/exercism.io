class Darts
    def initialize(x, y)
      @x, @y = x, y
    end

    def score
      case Math.hypot(@x, @y)
        when 0..1 then 10
        when 1..5 then 5
        when 5..10 then 1
        else 0
      end
    end
end

if $PROGRAM_NAME == __FILE__
  darts = Darts.new(-9, 9)
  p darts.score
end
