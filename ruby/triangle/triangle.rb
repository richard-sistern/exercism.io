class Triangle
  attr_reader :sides, :unique_sides

  # DONE: Check for actual triangle 
  # TODO: Degenerate
  # TODO: Tidy up!!!
  def initialize(sides)
    @sides = sides
    @unique_sides = sides.uniq.count
  end

  def equilateral?
    unique_sides == 1 if triangle?
  end

  def isosceles?
    # DONE: Add a check for equilateral?
    unique_sides == 2 || equilateral? if triangle?
  end

  def scalene?
    unique_sides == 3 if triangle?
  end

  private

  def triangle?
    # TODO: Rework to remove !
    # the sum of the lengths of any two sides must be greater than or equal to the
    #length of the third side
    sum_sides = sides.inject(:+)
    !sides.any? { |side| (sum_sides - side) <= side }
  end
end

if $PROGRAM_NAME == __FILE__
  # test_equilateral_triangles_are_also_isosceles
  triangle = Triangle.new([4, 4, 4])
  puts triangle.isosceles? # true

  # test_triangle_is_not_isosceles_if_no_sides_are_equal
  triangle = Triangle.new([2, 3, 4])
  puts triangle.isosceles? # false
end
