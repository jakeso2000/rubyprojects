class VendingMachine

  def initialize(value = 10)
    @value = value
  end　

  def insert(value)
  	@value = value
  	values = [10, 50]
  	unless values.include?(value)
  	 puts @value
  	end 
  end
end