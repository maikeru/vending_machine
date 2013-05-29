vending_machine
===============

Vending Machine exercise from [TDDBC](http://devtesting.jp/tddbc/?TDDBC%E5%A4%A7%E9%98%AA2.0%2F%E8%AA%B2%E9%A1%8C)

My translation of the challenge:

Subject
-------
A drinks vending machine (version 2.0)

Important things to Remember When Solving the Challenge
-------------------------------------------------------
* The goal is not to complete all sections of the challenge, try to learn as much as possible from the workshop.
* If pair-programming, try to swap roles regularly. Swapping roughly every 10 minutes is good.
* TDD aims for "beautiful, working code". Try refactoring individually where necessary.
* Each part of the challenge is not supposed to be a single Red -> Green cycle. Split/tidy the requirements whichever way is easiest for you, focus on taking small steps.

Step 0 : Insert and Refund Money
--------------------------------
Handle the following:
* Insert 10 yen, 50 yen, 100 yen, 500 yen coins and 1000 yen notes one at a time
* Insert multiple times
* Get the total amount of money inserted
* On refund, output the total amount of money inserted

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)

Step 1 : Unsupported Money
--------------------------
When unsupported money (1 yen coins, 5 yen coins, notes other than 1000 yen) is inserted, refund it without adding it
to the total inputted money.

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)

Step 2 : Drink Management
-------------------------
* Can enter one type of drink with name and value properties. On initialization, 5 Cokes (price 120 yen, name "Coke") are stored
* Can retrieve the stored drink's information (name, price and quantity).

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)

Step 3 : Purchasing
-------------------
* Can get whether a coke can be bought based on the inserted money and the amount of stock
* If more than the cost of the drink has been inserted, reduce the stock for that drink and increase the amount of sales (revenue)
* If not enough money has been inserted or there is not enough stock, do nothing (in purchasing process)
* Can get the current total sales value.
* In the refund process, subtract the amount paid for drinks from the total amount of money inserted and output the amount of change.

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)

Step 4 : Add Functionality
--------------------------
Can manage three types of drink
* Stock five Red Bulls (Price: 200 yen, Name: "Red Bull")
* Stock five waters (Price: 100 yen, Name "Water")
Can get a list of drinks that can be purchased based on amount of money and current stock.

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)

Step 5 : Manage Giving Change and Amount of Sales
-------------------------------------------------
When the a purchase is made and more than the price of the purchase has been inserted into the machine, output the amount of change (the difference between the amount of money inserted and the price of the drink)
* When the amount of money inserted and the price are the same, in other words, when the amount of change is zero yen, output that the amount of change is zero yen.
* You don't need to consider coin denominations when giving change

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)
