require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  before do
    @product = FactoryGirl.create(:product, id: 1)
    @review = FactoryGirl.create(:review, product_id: 1)
  end
  context "user writes a review" do
    describe "Review create" do
      it "increases the number of reviews by 1" do
        expect{ post :create, product_id: @product.id, review: {body: @review.body, name: @review.name, rating: @review.rating } }.to change(Review,:count).by(1)
      end

      it "returns http success" do
         post :create, product_id: @product.id, review: {body: @review.body, name: @review.name, rating: @review.rating }
         expect(response).to redirect_to(product_path(@product.id))
      end
    end
  end
end
