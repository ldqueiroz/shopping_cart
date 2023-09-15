class ShoppingCart
  def initialize
    @items = []
    @total = 0
  end

  def add_item(item_name, quantity, price)
    @items << { name: item_name, quantity: quantity, price: price }
    @total += price * quantity
  end

  def remove_item(item_name)
    item = @items.find { |item| item[:name] == item_name }
    if item
      @total -= item[:price] * item[:quantity]
      @items.delete(item)
    end
  end
end

# Example usage:

# cart = ShoppingCart.new
# cart.add_item("Widget", 2, 10)
# cart.add_item("Gadget", 1, 20)
# cart.calculate_discount(10)
# cart.remove_item("Widget")
# cart.print_invoice
