class Triangle
  attr_reader :sides, :unique_sides, :sum_sides

  def initialize(sides)
    @sides = sides.sort
    @unique_sides = sides.uniq.count
    @sum_sides = sides.sum
  end

  def equilateral?
    unique_sides == 1 if triangle?
  end

  def isosceles?
    unique_sides == 2 || equilateral? if triangle?
  end

  def scalene?
    unique_sides == 3 if triangle?
  end

  def degenerate?
    sides[0] + sides[1] <= sides[2] && sum_sides.positive?
  end

  private

  def triangle?
    sides.all? { |side| side < sum_sides - side }
  end
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
