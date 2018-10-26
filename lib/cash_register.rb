require'pry'
class CashRegister
<<<<<<< HEAD
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
=======
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
>>>>>>> 4ed5694b91aac2bac941d12afcda01cf5319641c
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
<<<<<<< HEAD
    if self.discount == 0
      "There is no discount to apply."
    else
    "After the discount, the total comes to $#{self.total.to_i}."
  end
  end
  def void_last_transaction
    self.total = self.total - self.last_transaction
=======
    "After the discount, the total comes to $#{self.total.to_i}."
>>>>>>> 4ed5694b91aac2bac941d12afcda01cf5319641c
  end
end
