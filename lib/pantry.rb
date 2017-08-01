class Pantry
attr_reader :stock


  def initialize
    @stock = {}
  end

  def stock_check(restock_item)
   count = @stock[restock_item]
   if count == nil
     count = 0
   end
   count
 end

  def restock(restock_item, quantity)
    if @stock.has_key?(restock_item)
      @stock[restock_item] = @stock[restock_item] + quantity
    elsif restock_item.class != String
      nil
    else
      @stock[restock_item] = quantity
    end
  end

  def centi_units(quantity)
    quantity/100
  end

  def milli_units(quantity)
    quantity*1000
  end



end
