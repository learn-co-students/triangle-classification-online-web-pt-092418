class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(one,two,three)
    @side1=one
    @side2=two
    @side3=three
  end
  def kind
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 && side2 != side3
      :isosceles
    elsif side1 != side2 && side2 != side3
      :scalene
    else
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Enter the values of a valid triangel"
    end
  end
end
