vending_machine
===============

Vending Machine exercise from [TDDBC](http://devtesting.jp/tddbc/?TDDBC%E5%A4%A7%E9%98%AA2.0%2F%E8%AA%B2%E9%A1%8C)

My translation of the steps:

Step 0 : Insert and refund money
--------------------------------
Handle the following:
* Insert 10 yen, 50 yen, 100 yen, 500 yen coins and 1000 yen notes one at a time
* Insert multiple times
* Get the total amount of money inserted
* On refund, output the total amount of money inserted

Step 1 : Unsupported money
--------------------------
When unsupported money (1 yen coins, 5 yen coins, notes other than 1000 yen) is inserted, refund it without adding it
to the total inputted money.

Step 2 : Drink management
-------------------------
* Can enter one type of drink with name and value properties. On initialization, 5 Cokes (price 120 yen, name "Coke") are stored
* Can retrieve the stored drink's information (name, price and quantity).

Step 3 : Purchasing
-------------------
* Can get whether a coke can be bought based on the inserted money and the amount of stock
* If more than the cost of the drink has been inserted, reduce the stock for that drink and increase the amount of sales (revenue)
* If not enough money has been inserted or there is not enough stock, do nothing (in purchasing process)
* Can get the current total sales value.
* In the refund process, subtract the amount paid for drinks from the total amount of money inserted and output the amount of change.

