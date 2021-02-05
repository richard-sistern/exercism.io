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
      .each_with_object('') { |color, value| value << BANDS[color].to_s }
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

# .LINKS
# https://www.honeybadger.io/blog/how-ruby-ampersand-colon-works/
# https://ruby-doc.org/core-2.7.2/Kernel.html#method-i-Integer
# https://moeffju.net/blog/integer-vs-to_i-in-ruby/
# http://www.rubyfleebie.com/2007/04/05/to_i-vs-to_int/
# https://bigbinary.com/blog/ruby-2-6-adds-option-to-not-raise-exception-for-integer-float-methods
