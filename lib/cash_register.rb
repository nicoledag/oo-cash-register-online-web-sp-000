require 'pry'

class CashRegister

  attr_accessor :total, :discount, :title

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount

    cal_dis = @total * @discount.to_r / 100
    cal_int = cal_dis.to_i
    @total = @total - cal_int

      if @discount == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{@total}."
      end
  end

  def items
    add_item(title, price, quantity = 1)





  end



end
