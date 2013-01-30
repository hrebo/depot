class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  #metoda na vypocet celkovej ceny
  def total_price
  	product.price * quantity
  end
end
