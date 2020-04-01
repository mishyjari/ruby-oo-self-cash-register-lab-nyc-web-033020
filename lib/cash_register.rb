class CashRegister
  
  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
    @transactions = []
  end
  
  attr_accessor :discount, :total, :items

  def add_item(item,cost,qty=1)
    qty.times do
      @items.push(item)
      @transactions.push([item,cost,qty])
      @total += cost
    end
  end
  
  def apply_discount
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
  
end