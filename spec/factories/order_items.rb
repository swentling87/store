FactoryGirl.define do
  factory :order_item do
    unit_price "9.99"
    quantity 1
    total_price "9.99"
    product_id 1
    order_id 1
  end
end
