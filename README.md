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
* Provide a way to enter one type of drink with name and value properties. On initialization, 5 Cokes (price 120 yen, name "Coke") are stored
* Provide a way to retrieve the stored drink's information (name, price and quantity).

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)

Step 3 : Purchasing
-------------------
* Provide a way to get whether a coke can be bought based on the inserted money and the amount of stock
* If more than the cost of the drink has been inserted, reduce the stock for that drink and increase the amount of sales (revenue)
* If not enough money has been inserted or there is not enough stock, do nothing (in purchasing process)
* Provide a way to get the current total sales value.
* In the refund process, subtract the amount paid for drinks from the total amount of money inserted and output the amount of change.

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)

Step 4 : Add Functionality
--------------------------
* Provide a way to manage three types of drink
 * Stock five Red Bulls (Price: 200 yen, Name: "Red Bull")
 * Stock five waters (Price: 100 yen, Name "Water")
* Provide a way to get a list of drinks that can be purchased based on amount of money and current stock.

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)

Step 5 : Manage Giving Change and Amount of Sales
-------------------------------------------------
* When the a purchase is made and more than the price of the purchase has been inserted into the machine, output the amount of change (the difference between the amount of money inserted and the price of the drink)
 * When the amount of money inserted and the price are the same, in other words, when the amount of change is zero yen, output that the amount of change is zero yen.
 * You don't need to consider coin denominations when giving change

Refactoring
-----------
(Refactor your code and tests in preparation for the next step!)

Practical Applications
======================
Step 6: Add a Stock of Coins
----------------------------
* The vending machine can hold a stock of coins.
* The machine stocks 10 of each valid denomination of coins and notes.
* When giving change, prioritize large denominations over small. When the stock of any denomination runs out, make up the difference with other denominations where possible. (e.g. use five 10 yen coins in place of a 50 yen coin)
 * You can use coins/notes that were inserted in the machine when giving change (e.g. Insert 110 yen, buy a 100 yen drink, give the extra money back in change)
 * When outputting change, reduce the stock of coins/notes.
* When purchasing, if there is not enough money to give change, do nothing.
* Provide a way to get the amount of coins in stock

Step 7 : Random Drink Purchasing
--------------------------------
* Add five diet colas (Price: 120 yen, Name: "Diet Cola") to the drink stock
* Add five bottles of green tea (Price: 120 yen, Name: "Green Tea") to the drink stock
* Add a random purchase button
  * Pressing the random purchase button buys one of cola, diet cola or green tea.
    * When none of the random purchase drinks is available, behave the same as when there are no normal drinks
    * When there is enough money inserted and enough stock available, "Random" should be added to the list of drinks available. (i.e. If 120 yen is inserted and there are tea and cola available, the available drinks list should contain "Cola", "Green Tea" and "Random").

Further Problems to Attempt if Progress Allows
==============================================
Advanced Giving of Change
-------------------------
* Provide a way to re-use money from sales when giving change.

Expiry Date Management
----------------------
* Provide a way to register expiry dates (Year/Month/Day) for each bottle of drink
* If the current date/time exceeds the expiry date for the selected drink, do nothing when the purchase button is pressed.
* Provide a way to get the expiry dates for the drinks stored in the machine.

