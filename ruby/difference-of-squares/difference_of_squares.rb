class Squares
    def initialize(value)
        @values = (1..value).to_a
    end

    def square_of_sum
    end

    def sum_of_squares
    end

    def difference
    end
end

if $PROGRAM_NAME == __FILE__
  a =  Squares.new(100)    
  puts a.inspect
  puts a.instance_of? Array
end