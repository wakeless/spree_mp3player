
  
  # Adds the mp3 player(s) on the product details page
  Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "spree_mp3_product_images",
                     :insert_after => "[data-hook='product_images'], #product_images[data-hook]",
                     :text => "    <div id=\"mp3_players\">
      <%= render @product.mp3s %>
    </div>
",
                     :disabled => false)
