require 'minitest/autorun'
require_relative '../lib/vending_machine'

describe VendingMachine do
  [10, 50, 100, 500, 1000].each do |denomination|
    describe "when #{denomination} is inserted" do
      it 'returns the current total' do
        VendingMachine.new.insert_money(denomination).must_equal denomination
      end
    end
  end
end
