require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @a = side_one
    @b = side_two
    @c = side_three
    @shape = [side_one, side_two, side_three]
  end

  def trouble_triangle
    @shape    
  end

  def kind
    error_one = @a <= 0 || @b <= 0 || @c <= 0  
    error_two = @a + @b <= @c || @b + @c <= @a || @a + @c <= @b 

    if error_one || error_two
      raise TriangleError      
    elsif @shape.uniq.length == 1
      :equilateral
    elsif @shape.uniq.length == 2 
      :isosceles
    else
      :scalene
    end
  end
end

  
class TriangleError < StandardError
  
end