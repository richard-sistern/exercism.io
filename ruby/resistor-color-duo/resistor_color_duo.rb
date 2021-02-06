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
     @colors = colors.take(2).map(&:to_sym)
  end

  def resistance
    @colors
      .each_with_object('') { |color, digits| digits << BANDS[color].to_s }
  end

  public

  def to_i
    Integer(resistance)
  end
end

if $PROGRAM_NAME == __FILE__
  puts ResistorColorDuo.value %w'orange orange'
  puts ResistorColorDuo.value %w'green brown orange'
end

# Test guard for colors black, black
if defined?(Minitest)
  describe 'Mentor Custom Test' do
    it 'must translate ["black", "black"] as 0' do
      expected = 0
      actual = ResistorColorDuo.value(['black', 'black'])
      expect(actual).must_equal expected
    end
  end
end
