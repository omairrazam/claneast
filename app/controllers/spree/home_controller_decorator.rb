module Spree
  HomeController.class_eval do
  	before_action :discounted_products, only: :index
  	
  	def careers
  	end

  	def about_us
  	end
  	
  	private
  	def discounted_products
  		@discounted_products = Spree::Product.sale_products
  		@featured_products   = Spree::Product.featured_products
  	end
  end
end