module Spree
  HomeController.class_eval do
    def sale
      @products = Product.sale_products
      @featured_products = Product.featured_products
    end
  end
end