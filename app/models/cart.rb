class Cart < ActiveRecord::Base
  attr_accessible :title, :body
  has_many :line_items, :dependent => :destroy

  def add_product(product_id, cart_id)
  	current_item = line_items.find_by_product_id(product_id)
  	if current_item
  		current_item.quantity += 1
  	else
      current_item = line_items.create(:cart_id => cart_id,:product_id => product_id)
  	end
  	current_item
  end

  def total_price
    line_items.to_s.sum { |item| line_item.total_price}
  end

end
