Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'add_featured_to_product_edit',
  :insert_after => "erb[loud]:contains('text_field :price')",
  :text => "
    <%= f.field_container :featured do %>
      <%= f.label :featured, raw(Spree.t(:featured) + content_tag(:span, ' *')) %>
      <%= f.check_box :featured, :value => @product.featured %>
      <%= f.error_message_on :featured %>
    <% end %>
")