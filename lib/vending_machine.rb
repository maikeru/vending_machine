class VendingMachine
  DENOMINATIONS = [10, 50, 100, 500, 1000]

  def initialize
    @total_inserted = 0
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
end
