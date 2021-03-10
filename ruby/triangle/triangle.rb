class Triangle
  attr_reader :sides, :unique_sides, :sum_sides

  # DONE: Check for actual triangle 
  # TODO: Degenerate
  # TODO: Tidy up!!!
  def initialize(sides)
    @sides = sides.sort
    @unique_sides = sides.uniq.count
    @sum_sides = sides.sum
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

  def degenerate?
    #triangle?
    #sides.sort!
    sides[0] + sides[1] <= sides[2] && sum_sides > 0
    # sort asc
    # a+b<=c
  end

  private

  def triangle?
    # DONE: Rework to remove !
    # the sum of the lengths of any two sides must be greater than or 
    # equal to the length of the third side
    #sum_sides = sides.sum
    #sides.none? { |side| (sides.sum - side) <= side }
    sides.all? { |side| side < sum_sides - side }
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

if defined?(Minitest)
  describe 'Degenerate Custom Tests' do
    it 'must assert true if two sides equal a third' do
      actual = Triangle.new([2, 2, 4]).degenerate?
      expect(actual).must_equal true
    end

    it 'must assert true if two sides equal a third when not in ascending order' do
      actual = Triangle.new([3, 6, 3]).degenerate?
      expect(actual).must_equal true
    end

    it 'must assert true when sides are given in floats' do
      actual = Triangle.new([2.0, 4.5, 6.5]).degenerate?
      expect(actual).must_equal true
    end

    it 'must assert false when all sides are zero' do
      actual = Triangle.new([0, 0, 0]).degenerate?
      expect(actual).must_equal false
    end
  end
end

 