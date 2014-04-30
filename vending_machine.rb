class VendingMachine
  AVAILABLE_VALUES = [10,50].freeze
  attr_reader :total

  def initialize
    @total = 0
  end

  def insert money
    AVAILABLE_VALUES.include?(money) ?  nil.tap {@total+=money} : money
  end

  def refund
    total.tap {@total = 0}
  end

end