class VendingMachine

  def initialize
     @total = 0
  end　

  def insert(value)
    @value = value
    values = [10, 50, 100, 1000, 10000]
    unless values.include?(value)
      puts "#{@value} (not available)"
    else 
      puts "nil (OK)"
      @total += @value
    end
      puts @total 
  end

  def total
    puts @total
  end

end

