module Spree
  HomeController.class_eval do
  	before_action :discounted_products, only: :index
  	
  	private
  	def discounted_products
  		@discounted_products = Product.sale_products
  		@featured_products   = Product.featured_products
  	end
  end
end