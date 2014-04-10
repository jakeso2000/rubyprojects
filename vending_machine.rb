class VendingMachine
  AVAILABLE_VALUES = [10, 50, 100, 500, 1000]

  def initialize
    @total = 0
  end

  def insert(value)
    unless AVAILABLE_VALUES.include?(value)
      nil
    else 
      @total += value
    end 
  end

  def total
    @total
  end

  def refund 
    refund = @total
    @total = 0
    refund 
  end
end