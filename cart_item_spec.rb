require 'rspec'

# Require your code file here
require_relative 'cart_item'

describe CartItem do
  let(:item) { CartItem.new('Widget', 2, 10) }

  describe '#subtotal' do
    it 'should calculate the subtotal correctly' do
      expect(item.subtotal).to eq(20)
    end
  end
end

describe ShoppingCart do
  let(:cart) { ShoppingCart.new }

  describe '#add_item' do
    it 'should add an item to the cart' do
      expect { cart.add_item('Widget', 2, 10) }.to change { cart.items.length }.from(0).to(1)
    end
  end

  describe '#remove_item' do
    it 'should remove an item from the cart' do
      cart.add_item('Widget', 2, 10)
      expect { cart.remove_item('Widget') }.to change { cart.items.length }.from(1).to(0)
    end
  end

  describe '#calculate_discount' do
    it 'should calculate the discount correctly' do
      cart.add_item('Widget', 2, 10)
      cart.add_item('Gadget', 1, 20)
      expect(cart.calculate_discount(10)).to eq(36)
    end
  end

  describe '#print_invoice' do
    it 'should print an itemized invoice' do
      cart.add_item('Widget', 2, 10)
      cart.add_item('Gadget', 1, 20)

      expected_output = <<~OUTPUT
        Items in Cart:
        Widget - 2 x $10
        Gadget - 1 x $20
        Total: $40
      OUTPUT

      expect { cart.print_invoice }.to output(expected_output).to_stdout
    end
  end
end
