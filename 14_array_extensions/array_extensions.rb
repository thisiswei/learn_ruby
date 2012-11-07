
class Array
  def sum
    self.inject(0){|sum,x|sum+x} 
  end

  def square
    self.map{|a| a*a}
  end

  def square!
    self.map!{|a| a*a}
  end
end
