class Matrix
    def initialize(lines)
        @lines = lines
    end

    def rows
        @lines.each_line.map { |line| line.split.map &:to_i }
    end

    def columns
        rows.transpose
    end
end
