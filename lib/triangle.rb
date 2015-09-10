class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end
  
  def isosceles?
    if @sides.uniq().length() > 2
      false
    else
      true
    end
  end
  
  def scalene?
    if @sides.uniq().length() < 3 || self.triangle?() == false
      false
    else
      true
    end
  end
  
  def equilateral?
    if @sides.uniq().length() > 1
      false
    else
      true
    end
  end
  
  def triangle?
    if @sides[0] >= @sides[1] + @sides[2] || @sides[1] >= @sides[0] + @sides[2] || @sides[2] >= @sides[0] + @sides[1]
      false
    else
      true
    end
  end
end