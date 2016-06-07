require 'rails_helper'

RSpec.describe OrderItemsController, type: :controller do
  before do
    @product = FactoryGirl.create(:product, id: 1)
    @order = FactoryGirl.create(:order, id: 7)
    @order_item = FactoryGirl.create(:order_item, id: 2, product_id: 1, order_id: 7, quantity: 1, unit_price: "2.00", total_price: "2.00")
  end
  describe "Order_item create" do
    it "increases the number of order items by 1 for a new order item" do
      expect{ post :create, format: :js, id: 3, order_item: {product_id: @product.id, order_id: @order_item.id, quantity: @order_item.quantity, unit_price: @order_item.unit_price, total_price: @order_item.total_price } }.to change(OrderItem,:count).by(1)
    end
  end


end
