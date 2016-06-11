module ProductsHelper

  def avg_rating
    total = @product.reviews.map{|x| x.rating}
    avg = ((total.inject(0){|sum,x| sum + x}).to_f / (@product.reviews.count))
    number_with_precision(avg, precision: 2)
  end
end
