require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount

    cal_dis = self.total * self.discount.to_r / 100
    cal_int = cal_dis.to_i
    self.total = self.total - cal_int


    puts "After the discount, the total comes to #{self.total}."

  end
end
