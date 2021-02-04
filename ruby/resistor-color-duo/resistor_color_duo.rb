class ResistorColorDuo
  BANDS =
    {
      black:  0,
      brown:  1,
      red:    2,
      orange: 3,
      yellow: 4,
      green:  5,
      blue:   6,
      violet: 7,
      grey:   8,
      white:  9
    }

  def self.value(colors)
    new(colors).to_i
  end

  private

  def initialize(colors)
    @resistance = colors.take(2).each_with_object('') { |color, value| value << BANDS[color.to_sym].to_s }
  end

  attr_reader :resistance

  public

  def to_i
    Integer(self.resistance)
  end
end

if $PROGRAM_NAME == __FILE__
  puts ResistorColorDuo.value %w'orange orange'
  puts ResistorColorDuo.value %w'green brown orange'
end
