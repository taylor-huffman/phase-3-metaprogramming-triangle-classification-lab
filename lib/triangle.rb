class Triangle
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    @length1, @length2, @length3 = [@length1, @length2, @length3].sort
    if @length1 <= 0 || @length1 + @length2 <= @length3
      raise TriangleError
    elsif ((@length1 == @length2) && (@length1 == @length3) && (@length2 == @length3))
      :equilateral
    elsif ((@length1 == @length2) || (@length1 == @length3) || (@length2 == @length3))
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end

end
