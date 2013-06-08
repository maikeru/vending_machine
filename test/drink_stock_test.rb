require 'minitest/autorun'
require_relative '../lib/vending_machine'

describe VendingMachine do
  describe "when a drink is registered" do
    it "stores the drink's information" do
      machine = VendingMachine.new
      machine.get_drinks.must_equal "5x Coke at 120 yen"
    end
  end
end
