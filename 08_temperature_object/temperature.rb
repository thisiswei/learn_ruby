class Temperature
  
  def initialize hash
    @fah = hash[:f] || hash[:c]*9.0/5.0 +32

  end

  def in_fahrenheit
    @fah 
  end

  def in_celsius
    (@fah-32)*5.0/9.0 
  end

  def self.from_celsius(cel)
    new(:c => cel)
  end

  def self.from_fahrenheit(fah)
    new(:f => fah) 
  end

end

class Celsius < Temperature
   def initialize cel
    super(:c => cel)      
   end
end

class Fahrenheit < Temperature
   def initialize fah
     super(:f => fah)

   end
end

