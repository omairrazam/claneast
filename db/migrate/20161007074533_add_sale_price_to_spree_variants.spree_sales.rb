# This migration comes from spree_sales (originally 20161007070501)
class AddSalePriceToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :sale_price, :decimal, :precision => 8, :scale => 2
    add_column :spree_variants, :featured, :boolean, :default => false
  end
end
