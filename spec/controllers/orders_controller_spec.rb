require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  before do
    @product = FactoryGirl.create(:product, id: 1)
    @order = FactoryGirl.create(:order)
  end

  describe "Order new" do
    it "returns http success" do
      get :new, {id: @order.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "Order create" do
    it "increases the number of orders by 1 for a new order" do
      expect{ post :create, id: @order.id, order: {name: @order.name, email: @order.email, zipcode: @order.zipcode, product_id: @product.id} }.to change(Order,:count).by(1)
      expect(response).to redirect_to(cart_path)
    end
  end
end
