require 'minitest/autorun'
require_relative '../lib/vending_machine'
DENOMINATIONS = [10, 50, 100, 500, 1000]

describe VendingMachine do
  DENOMINATIONS.each do |denomination|
    describe "when #{denomination} is inserted" do
      machine = VendingMachine.new
      it 'returns the value inserted' do
        machine.insert_money(denomination).must_equal denomination
      end
    end
  end
  describe "when multiple coins/notes are inserted" do
    it 'returns the total for all the coins/notes' do
      machine = VendingMachine.new
      insert_all machine, DENOMINATIONS
      machine.get_total_inserted.must_equal 1660
    end
  end
  describe "when a refund is requested" do
    it "returns the total amount of money insterted" do
      machine = VendingMachine.new
      insert_all machine, DENOMINATIONS
      machine.refund.must_equal DENOMINATIONS.reduce(:+)
    end
  end

  def insert_all machine, money
    money.each do |coin|
      machine.insert_money(coin)
    end
  end
end
