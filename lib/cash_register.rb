class CashRegister

  attr_accessor :total, :discount, :items, :quantity, :last_item
  

  def initialize (discount=0)
    @total = 0
    @discount = discount
    @items = []
    @quantity = 0
    @last_item = 0
  end

  def total 
    return @total
  end

  def add_item(title, price, quantity=0)
    @last_item = price
    @items << title
    if quantity != 0
      @total += (price * quantity)
      (quantity-1).times{@items.push(title)}
    else
      @total += price 
    end
    
  end

  def apply_discount

    if @discount !=0
      @total = @total - (@total * (@discount/100.0))
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
    

  end

  def items
    return @items
  end

  def void_last_transaction
    @total -= @last_item

  end




end


