  require 'pry'
class Triangle
 attr_accessor :side_one_length, :side_two_length, :side_three_length, :equilateral, :isosceles, :scalene

    def initialize(side_one_length, side_two_length, side_three_length)
      @side_one_length = side_one_length
      @side_two_length = side_two_length
      @side_three_length = side_three_length
      @equilateral = equilateral
      @isosceles = isosceles
      @scalene = scalene
    end

  
      def kind
        if (@side_one_length == @side_two_length) && (@side_one_length == @side_three_length)
        :equilateral
    elsif (@side_one_length == @side_two_length) || (@side_one_length == @side_three_length) || (@side_two_length == @side_three_length)
       :isosceles
    elsif ![@side_one_length, @side_two_length, @side_three_length].any? {|side| side < 1}
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
        "Triangle::TriangleError"
      end
    end
end