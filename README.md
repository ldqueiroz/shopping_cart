# Instructions:

1 - Refactor the provided code to adhere to OOP principles, with improved organization and encapsulation.

2 - Implement a CartItem class to represent items in the shopping cart.

3 - Use this class to track items and calculate their individual prices.

4 - Ensure that the ShoppingCart class manages a collection of CartItem objects.

5 - Maintain the ability to add, remove, and calculate discounts on items in the cart.

6 - The print_invoice method should display the itemized list of items and the total cost.

7 - Implement dynamic methods to sum the price for a type of item.

# Notes:

1 - Encourage the candidate to refactor the code to be more organized, maintainable, and OOP-compliant.

2 - Emphasize encapsulation and separation of concerns by creating appropriate classes and methods.

3 - Ensure that the code still functions correctly after refactoring.

4 - This exercise is designed to be completed within 20 minutes or less.

5 - This exercise will allow you to assess the candidate's ability to refactor code to follow OOP principles while maintaining functionality. They should create a CartItem class and use it to refactor the shopping cart code for improved readability and maintainability.

# Steps we expect from the candidate (Review as some of those we will already provide to the candidate)

Step 1: Identify the Key Components

First, identify the key components of the problem and determine the classes and their responsibilities. In this case, we have two main classes: CartItem and ShoppingCart.

Step 2: Create the CartItem Class

Create the CartItem class to represent individual items in the shopping cart. The class should have attributes like name, quantity, and price, as well as a method to calculate the subtotal.

Step 3: Create the ShoppingCart Class

Create the ShoppingCart class to manage a collection of CartItem objects. Initially, it can be an empty array. Implement methods to add items to the cart, remove items from the cart, calculate discounts, and print invoices.

Step 4: Implement the CartItem Class

Implement the CartItem class with its attributes and the subtotal method to calculate the subtotal of an item (quantity * price).

Step 5: Implement the ShoppingCart Class

Implement the ShoppingCart class with an initialize method to create an empty cart and methods to add items, remove items, calculate discounts, and print invoices.

Step 6: Refactor Add and Remove Item Logic

Refactor the code for adding and removing items in the shopping cart to create instances of CartItem and manage them within the ShoppingCart class. Update the instance variables accordingly.

Step 7: Calculate Discounts

Refactor the discount calculation logic to consider the individual item prices and quantities. Calculate the total price of all items before applying discounts.

Step 8: Print Invoice

Refactor the print_invoice method to display the itemized list of items and the total cost. Use the CartItem objects to access item details.

Step 9: Test the Code

Write RSpec tests to cover the functionality of both the CartItem and ShoppingCart classes. Ensure that the tests cover scenarios such as adding items, removing items, calculating discounts, calculating subtotals, and printing invoices.

Step 10: Run and Validate Tests

Run the RSpec tests to ensure that the code is functioning as expected and that all tests pass successfully.

Step 11: Refactor as Needed

Review the code for any opportunities to further refactor or improve the code quality, adhering to OOP principles. Make adjustments as necessary.