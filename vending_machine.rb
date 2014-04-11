class VendingMachine
  AVAILABLE_VALUES = [10, 50, 100, 500, 1000]
  PURCHASABLE＿DRINK_NAMES = [:cola]

  def initialize
    @total = 0
    @stock_table = {:cola => {:price=>120, :stock=>5}}
    @sale_amount = 0
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

  def stock_info 
    @stock_table
  end

  def purchasable?(drink_name)
    PURCHASABLE＿DRINK_NAMES.include? drink_name
  end 

  def purchase(drink_name)
    if purchasable? drink_name
      if @total >= @stock_table[:cola][:price]
       @sale_amount += @stock_table[:cola][:price]
       @total -= @stock_table[:cola][:price]  
       @stock_table[:cola][:stock] = @stock_table[:cola][:stock] - 1
       true
      else
        false
      end
    else
      false  
    end
  end  

  def sale_amount
    @sale_amount 
  end

end