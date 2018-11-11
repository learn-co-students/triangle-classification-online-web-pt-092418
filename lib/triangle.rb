class Triangle
  attr_accessor :one, :two, :three
  def initialize(one,two,three)
    @one=one
    @two=two
    @three=three
  end
  def kind
    if one == 0 || two == 0 || three == 0 || one < 0 || two < 0 || three < 0 || one + two <= three || two + three <= one || one + three <= two 
      raise TriangleError
    elsif one == two && two == three
      :equilateral
    elsif one != three && two == three || one == three && two != three || one == two && two != three
      :isosceles
    elsif one != two && two != three
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Enter the values of a valid triangel"
    end
  end
end
