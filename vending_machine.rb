class VendingMachine
  AVAILABLE_VALUES = [10, 50, 100, 500, 1000]
  PURCHASABLE_DRINK_NAMES = [:cola]

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

  def drink_price(drink_name)
    @stock_table[drink_name][:price]
  end

  def decrease_stock(drink_name, amount)
    @stock_table[drink_name][:stock] -= amount
  end

  def purchasable?(drink_name)
    (PURCHASABLE_DRINK_NAMES.include? drink_name) && (@total >= drink_price(drink_name))  
  end 

  def purchase(drink_name)
    return false unless purchasable? drink_name
    @sale_amount += drink_price(drink_name)
    decrease_stock(drink_name, 1)
    @total -= drink_price(drink_name)  
    true  
  end  

  def sale_amount
    @sale_amount 
  end
 

end