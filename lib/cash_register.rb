require'pry'
class CashRegister
  attr_accessor :total
  def initialize(total = 0)
    @total = total
  end
  def discount
    self.total 
  end
  def add_item(title, price, quantity = 1)
    self.total = self.total+quantity*price
  end
  def apply_discount
    discounted_percent = discount.to_f/100
    discounted_price = discounted_percent*self.total
    self.total - discounted_price
  end
end
