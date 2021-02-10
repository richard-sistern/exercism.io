class Year
  def self.leap?(year)
    # on every year that is evenly divisible by 4
    # except every year that is evenly divisible by 100
    # unless the year is also evenly divisible by 400

    ((year % 4).zero? && year % 100 != 0) || (year % 400).zero?

    # % (modulo) gives the remaining of a division
    # https://www.rubyguides.com/2018/07/ruby-operators/

    # Tell, don't ask
    # https://www.reddit.com/r/ruby/comments/50qns8/zero_instead_of_0/
  end
end

if $PROGRAM_NAME == __FILE__
  puts Year.leap?(2015) # false
  puts Year.leap?(1996) # true
end
