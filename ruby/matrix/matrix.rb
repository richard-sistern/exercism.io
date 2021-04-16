class Matrix
# Mentor feedback:
# Since you're using the result of rows in two places (externally and in your columns method) 
# it's a good candidate for memoization, which is a fancy way to say you're caching the value 
# so you don't recalculate it every time. To do that you'll make another @ variable with the same name 
# as the method you're memoizing and ||= the result to it. In this case it will look like this:

# def rows
#   @rows ||= @text_matrix.each_line.map { ...
# end

  def initialize(text_matrix)
    @text_matrix = text_matrix
  end

  def rows
    @rows ||= @text_matrix.each_line.map { |line| line.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
