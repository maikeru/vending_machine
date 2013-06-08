require 'minitest/autorun'
require_relative '../lib/vending_machine'
DENOMINATIONS = [10, 50, 100, 500, 1000]

describe VendingMachine do
  describe "when individual coins/notes inserted" do
    DENOMINATIONS.each do |denomination|
      machine = VendingMachine.new
      describe "when #{denomination} is inserted" do
        it 'returns the value inserted' do
          machine.insert_money(denomination).must_equal denomination
        end
      end
    end
  end

  let(:machine) { VendingMachine.new }
  describe "when multiple coins/notes are inserted" do
    it 'returns the total for all the coins/notes' do
      insert_all machine, DENOMINATIONS
      machine.get_total_inserted.must_equal 1660
    end
  end
  describe "when a refund is requested" do
    it "returns the total amount of money insterted" do
      insert_all machine, DENOMINATIONS
      machine.refund.must_equal "Refund: #{DENOMINATIONS.reduce(:+)}"
    end
  end

  describe "when invalid money is inserted" do
    it "doesn't increase the total" do
      machine.insert_money 5
      machine.get_total_inserted.must_equal 0
    end

    it "refunds the money" do
      machine.insert_money 10
      machine.insert_money(5).must_equal "Refund: 5"
    end
  end

  def insert_all machine, money
    money.each do |coin|
      machine.insert_money(coin)
    end
  end
end
