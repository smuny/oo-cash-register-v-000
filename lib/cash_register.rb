require'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total = self.total+quantity*price
    quantity.times do
    self.items << title
  end
  self.last_transaction = quantity*price
  end
  def apply_discount
    discounted_percent = discount.to_f/100
    discounted_price = discounted_percent*self.total
    self.total = self.total - discounted_price
    if self.discount == 0
      "There is no discount to apply."
    else
    "After the discount, the total comes to $#{self.total.to_i}."
  end
  end
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
