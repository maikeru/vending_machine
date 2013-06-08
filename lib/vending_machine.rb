class VendingMachine
  def initialize
    @total_inserted = 0
  end

  def insert_money value
    @total_inserted += value
  end

  def get_total_inserted
    @total_inserted
  end

  def refund
    get_total_inserted
  end
end
