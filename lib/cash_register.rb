class CashRegister
  
  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
<<<<<<< HEAD
    @transactions = []
=======
>>>>>>> df771a62c65ced3eff12cba85abffc871ba377fe
  end
  
  attr_accessor :discount, :total, :items

  def add_item(item,cost,qty=1)
    qty.times do
      @items.push(item)
<<<<<<< HEAD
      @transactions.push([item,cost,qty])
=======
>>>>>>> df771a62c65ced3eff12cba85abffc871ba377fe
      @total += cost
    end
  end
  
  def apply_discount
<<<<<<< HEAD
    if @discount == 0 
      'There is no discount to apply.'
    else
      @total -= (@total * (@discount.to_f/100)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction
    transaction_total = @transactions[-1][1] *@transactions[-1][2]
    @total -= transaction_total
    @items.pop
    @transactions.pop
    @total
  end
  
=======
    @discount /= 100
    if @discount == 0 
      'There is no discount to apply.'
    else
      @total *= @discount
      "#{@discount}% Discount Applied, total is #{@total}."
    end
  end
  
>>>>>>> df771a62c65ced3eff12cba85abffc871ba377fe
end