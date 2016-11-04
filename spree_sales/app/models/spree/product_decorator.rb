module Spree
  	Product.class_eval do
    	delegate_belongs_to :master, :sale_price
    	delegate_belongs_to :master, :featured
    	scope :sale_products, -> {joins(:variants_including_master).where('spree_variants.sale_price is not null').uniq}
		scope :featured_products, -> {joins(:variants_including_master).where('spree_variants.featured=?',true).uniq}
	end
end
