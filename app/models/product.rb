class Product < ActiveRecord::Base
	default_scope :order => 'title'
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item

	attr_accessible :description, :image_url, :price, :title
	#validacia formulara
	validates :title, :description, :image_url, :price, :presence => true
	validates :price, :numericality => {:greater_then_or_equal_to => 0.1}
	validates :title, :uniqueness => true
	validates :image_url, :format => {:with => %r{\.(gif|jpg|png)$}i,
	     	  :message => 'Musi to byt adresa URL pre obrazok typu GIG,JPG alebo PNG'}
	validates :title, :length => {:minimum =>10, :message => 'Title musi mat aspon 10 znakov'}

	private

	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Existuju polozky')
			return false
		end
	end
end
