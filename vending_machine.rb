class VendingMachine

  def initialize
     @total = 0
     @refund = 0
  end　

  def insert(value)
    @value = value
    values = [10, 50, 100, 500, 1000]
    unless values.include?(value)
      puts "#{@value} (not available)"
    else 
      puts "nil (OK)"
      @total += @value
    end 
  end

  def total
    puts @total
  end

  def refund
    puts @total
    @refund = @total
    @total -= @refund 
  end

end

