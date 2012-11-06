class RPNCalculator
  attr_accessor :stack

  def initialize
    @stack = [0]
  end

  def pop
    num = stack.pop
    raise "calculator is empty" if num.nil?
    return num
   end

  def value
    return stack[-1]
  end

  def push(num)
    stack<<(num.to_f)
  end

  def plus
    stack<<(pop+pop)
  end

  def minus
    stack<<(pop-pop)

  end
  
  def divide
    stack<<(pop/(pop+0.0))
  end

  def times
    stack<<(pop*pop)
  end
  
 
end
