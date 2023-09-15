require 'rspec'

# Require your code file here
require_relative 'cart_item'

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
end
