#require 'drink'
class VendingMachine
  DENOMINATIONS = [10, 50, 100, 500, 1000]

  def initialize
    @total_inserted = 0
    @drink = Drink.new "Coke", 120, 5
  end

  def insert_money value
    if DENOMINATIONS.include? value
      @total_inserted += value
    else
      refund value
    end
  end

  def get_total_inserted
    @total_inserted
  end

  def refund value=get_total_inserted
    "Refund: #{value}"
  end

  def get_drinks
    "#{@drink.quantity}x #{@drink.name} at #{@drink.price} yen"
  end
end

class Drink
  attr_reader :name, :price, :quantity
  def initialize name, price, quantity
    @name, @price, @quantity = name, price, quantity
  end
end
