class Squares
    def initialize(value)
        @values = (1..value).to_a
    end

    def square_of_sum
        @values.reduce(:+) ** 2
    end

    def sum_of_squares
        @values
            .map { |v| v ** 2 }
            .sum
    end

    def difference
        square_of_sum - sum_of_squares
    end
end

if $PROGRAM_NAME == __FILE__
  puts Squares.new(1).square_of_sum # 1
  puts Squares.new(1).sum_of_squares # 1
  puts Squares.new(5).difference # 170
end