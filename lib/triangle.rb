class Triangle
  # write code here

end
class Triangle
  # triangle code
  attr_accessor :a, :b, :c
  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end 
  def kind
    if @a = 0 || @b = 0 || @c = 0
      raise TriangleError
    elsif @a < 0 || @b < 0 || @c < 0
      raise TriangleError
    elsif ( @a != @b ) && ( @c != @b)  && ( @a != @c)
      :scalene
    elsif (@a + @b + @c) % 3 == 0 
      :equilateral
    elsif (@a + @b) % 2 == 0 || (@a + @c) % 2 == 0 || (@b + @c) % 2 == 0
      :isosceles
    end
  end  

  class TriangleError < StandardError
    # triangle error code
    def message 
      "error"
    end
  end
end