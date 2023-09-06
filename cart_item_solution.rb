class CartItem
  attr_reader :name, :quantity, :price

  def initialize(name, quantity, price)
    @name = name
    @quantity = quantity
    @price = price
  end

  def subtotal
    @quantity * @price
  end
end

class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item_name, quantity, price)
    item = CartItem.new(item_name, quantity, price)
    @items << item
  end

  def remove_item(item_name)
    item_to_remove = @items.find { |item| item.name == item_name }
    if item_to_remove
      @items.delete(item_to_remove)
    end
  end

  def calculate_discount(discount_percentage)
    total = @items.sum(&:subtotal)
    discount = total * (discount_percentage / 100.0)
    total -= discount
    total
  end

  def print_invoice
    puts "Items in Cart:"
    @items.each do |item|
      puts "#{item.name} - #{item.quantity} x $#{item.price}"
    end
    total = @items.sum(&:subtotal)
    puts "Total: $#{total}"
  end
end

# Example usage:

cart = ShoppingCart.new
cart.add_item("Widget", 2, 10)
cart.add_item("Gadget", 1, 20)
cart.calculate_discount(10)
cart.remove_item("Widget")
cart.print_invoice
