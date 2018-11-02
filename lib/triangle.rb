class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @all_sides = [side_1, side_2, side_3]
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    # Further, each side must be larger than 0.
    if @all_sides.all? {|side| side > 0} && self.equality
    self.triangle
    else
      raise TriangleError
    end
  end

  def equality
    (@side_1 + @side_3 > @side_2) && (@side_2 + @side_3 > @side_1) && (@side_1 + @side_2 > @side_3)
  end

  def triangle
    # # A scalene triangle is a triangle that has no equal sides.
    # scalene
    # # An isosceles triangle is a triangle that has two equal sides.
    # isosceles
    # # An equilateral triangle is a triangle that has three equal sides.
    # equilateral
    if @side_1 == @side_2 && @side_2 == @side_3
      return :equilateral
    elsif @all_sides.uniq.length == 3
      return :scalene
    else
      return :isosceles
    end
  end

 class TriangleError < StandardError
   def message
   "KAPOW! this is my standard error message."
   end
 end
 #

end
