class Triangle
 attr_accessor :side_one_length, :side_two_length, :side_three_length, :equilateral, :isosceles, :scalene

    def initialize(side_one_length, side_two_length, side_three_length, equilateral, isosceles, scalene)
      @side_one_length = side_one_length
      @side_two_length = side_two_length
      @side_three_length = side_three_length
      @equilateral = equilateral
      @isosceles = isosceles
      @scalene = scalene
    end
    def kind
    if size_one_length == size_two_length == size_three_length
      return equilateral
    elsif side_one_length == size_two_length != side_three_length
      return isosceles
    elsif side_one_length != side_two_length != side_three_length
      return scalene
    else 
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  class TriangleError < StandardError
    def message 
    end
  end
end
