class ResistorColorDuo
  # TODO: Reorder code - PENDING REVIEW
  # TODO: Rework using each_with_object - D
  # TODO: Review freeze again
  # TODO: take(2) in class method or initialize?
  # TODO: is overloading to_i good or bad?
  # TODO: Define why Interger(string) is better

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

# .LINKS
#
# https://www.peterdebelak.com/blog/private-attr-readers/
# https://womanonrails.com/each-with-object
# https://apidock.com/rails/Enumerable/each_with_object
# https://naturaily.com/blog/public-private-protected-ruby
# https://medium.com/@leizl.samano/how-to-use-each-with-object-in-ruby-dccca07bfa18
# https://bigbinary.com/blog/ruby-2-6-adds-option-to-not-raise-exception-for-integer-float-methods
# https://ruby-doc.com/docs/ProgrammingRuby/html/tut_classes.html
# https://www.toptal.com/ruby/ruby-metaprogramming-cooler-than-it-sounds
# https://www.reddit.com/r/ruby/comments/9j0ooc/freeze_your_constants/
# https://www.rubypigeon.com/posts/a-review-of-immutability-in-ruby/
