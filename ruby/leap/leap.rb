class Year
  # TODO: Refactor

  def self.leap?(year)
    # on every year that is evenly divisible by 4
    # except every year that is evenly divisible by 100
    # unless the year is also evenly divisible by 400

    year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)

    # % (modulo) gives the remaining of a division
    # https://www.rubyguides.com/2018/07/ruby-operators/
  end
end

if $PROGRAM_NAME == __FILE__
  puts Year.leap?(2015) # false
  puts Year.leap?(1996) # true
end
