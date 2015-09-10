require('rspec')
require('triangle')

describe(Triangle) do
  describe('#isosceles?') do
    it('returns true if the triangle is isosceles') do
      test_triangle = Triangle.new(5, 5, 2)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
    
    it('returns false if the triangle is not isosceles') do
      test_triangle = Triangle.new(5, 3, 4)
      expect(test_triangle.isosceles?()).to(eq(false))
    end
  end
  
  describe('#scalene?') do
    it('returns true if the triangle is scalene') do
      test_triangle = Triangle.new(5, 3, 4)
      expect(test_triangle.scalene?()).to(eq(true))
    end
    
    it('returns false if the triangle is not scalene') do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.scalene?()).to(eq(false))
    end
    
    it('returns false if it is not a triangle') do
      test_triangle = Triangle.new(8, 2, 1)
      expect(test_triangle.scalene?()).to(eq(false))
    end
  end
  
  describe('#equilateral?') do
    it('returns true if the triangle is equilateral') do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
    
    it('returns false if the triangle is not equilateral') do
      test_triangle = Triangle.new(2, 3, 4)
      expect(test_triangle.equilateral?()).to(eq(false))
    end
  end
  
  describe('#triangle?') do
    it('returns true if it is a triangle') do
      test_triangle = Triangle.new(5, 3, 4)
      expect(test_triangle.triangle?()).to(eq(true))
    end
    
    it('returns false if it is not a triangle') do
      test_triangle = Triangle.new(8, 2, 1)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end
end