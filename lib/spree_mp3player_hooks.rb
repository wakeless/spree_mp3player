class SpreeMp3playerHooks < Spree::ThemeSupport::HookListener
  Deface::Override.new(:virtual_path => "admin/shared/_product_tabs",
                     :name => "converted_admin_product_tabs_792324593",
                     :insert_bottom => "[data-hook='admin_product_tabs'], #admin_product_tabs[data-hook]",
                     :text => "    <li<%== ' class=\"active\"' if current == \"Mp3 Previews\" %>>
      <%= link_to t(\"mp3_previews\"), admin_product_mp3s_path(@product) %>
    </li>
",
                     :disabled => false)
  
  # Adds the mp3 player(s) on the product details page
  Deface::Override.new(:virtual_path => "products/show",
                     :name => "converted_product_images_907390814",
                     :insert_after => "[data-hook='product_images'], #product_images[data-hook]",
                     :text => "    <div id=\"mp3_players\">
      <%= render @product.mp3s %>
    </div>
",
                     :disabled => false)
end
