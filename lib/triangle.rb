class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == 0 || b == 0 || c == 0 || a < 0 || b < 0 || c < 0 || a + b <= c || b + c <= a || a + c <= b
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a != c && b == c || a == c && b != c || a == b && b != c
      :isosceles
    elsif a != b && b != c
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end


end
