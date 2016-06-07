class OrdersController < ApplicationController

  def create
    @order = Order.create(order_params)

    if @order
      @order_items = current_order.order_items
      @order_items.each do |item|
        @order.order_items << item
        @order.save
      end
      flash[:notice] = "Order placed successfully."
      redirect_to cart_path
    else
      flash[:alert] = "Order failed to save."
      redirect_to cart_path
    end
  end

  def new
    @order = Order.new
  end

private

  def order_params
    params.require(:order).permit(:subtotal, :name, :email, :total, :zipcode, :order_placed)
  end
end
