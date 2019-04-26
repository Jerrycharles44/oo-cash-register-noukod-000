class CashRegister

  attr_accessor :total ,:discount,:items

  def initialize(discount=nil)
    @total=0
    @discount=discount
    @items=[]
  end

  def add_item(item,price,quantity=1)
    quantity.times do
      @items.push(item)
    end
    value = price*quantity
    @last_transaction=value
    @total+=price*quantity
  end

  def apply_discount
    if(@discount!=nil)
      @total-=(@total*@discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

   def void_last_transaction
     @total-=@last_transaction
   end
end
