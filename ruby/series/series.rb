class Series
    def initialize(series)
        @series = series
    end

    def slices(number)
        raise ArgumentError if number > @series.length

        @series.chars.each_cons(number).map(&:join)
    end
end

if $PROGRAM_NAME == __FILE__
    series = Series.new('01234')
    puts series.slices(1) # ['0', '1', '2', '3', '4']
    puts series.slices(2) # ['01', '12', '23', '34']
end
