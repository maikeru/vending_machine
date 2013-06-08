require 'minitest/autorun'
require_relative '../lib/vending_machine'

describe VendingMachine do
  [10, 50, 100, 500, 1000].each do |denomination|
    describe "when #{denomination} is inserted" do
      machine = VendingMachine.new
      it 'returns the value inserted' do
        machine.insert_money(denomination).must_equal denomination
      end
    end
  end
  describe "when multiple denominations are inserted" do
    it 'returns the total for all the denominations' do
      machine = VendingMachine.new
      [10, 50, 100, 500, 1000].each do |denomination|
        machine.insert_money(denomination)
      end
      machine.get_total_inserted.must_equal 1660
    end
  end
end
