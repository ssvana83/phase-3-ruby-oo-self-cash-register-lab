# require 'pry'

class CashRegister

  attr_reader :discount 
  # once initalized you can read but cant overerite/update 
  attr_accessor :total 
  # does reader and writer. all functionality  
  attr_writer :dollars 
  # once initialize an instance can write an attribute to it
  

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, amount = 1)
    @total += price * amount
  end
    

  def apply_discount
    if @discount > 0 
      my_discount = @total * @discount/100
      @total = @total - my_discount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items(items, price)
    
    @items << title
  end
  
end

# binding.pry 

