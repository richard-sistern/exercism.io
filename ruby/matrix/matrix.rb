class Matrix
  def initialize(text_matrix)
    @text_matrix = text_matrix
  end

  def rows
    @text_matrix.each_line.map { |line| line.split.map(&:to_i) }
  end

  def columns
      rows.transpose
  end
end
