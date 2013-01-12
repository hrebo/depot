class CombineItemsInCart < ActiveRecord::Migration

  def self.up
  	#nahrad viac poloziek pre jeden produkt v kosiku jednim produktom
  	Cart.all.each do |cart|
  		#spocitaj pocet kazdeho produktu v kosiku
  		sums = cart.line_items.grop(:product_id).sum(:quantity)

  		sums.each do |product_id, quantity|
  			if quantity > 1
  				#odober samostatne polozky
  				cart.line_items.where(:product_id => product_id).delete_all

  				#nahradenie jednou polozkou
  				cart.line_items.create(:product_id => product_id, :quantity => quantity)
  			end
  		end
  	end
  end
  

  def down
  end
end
