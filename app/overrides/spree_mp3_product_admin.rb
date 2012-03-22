
  Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                     :name => "spree_mp3_product_admin",
                     :insert_bottom => "[data-hook='admin_product_tabs'], #admin_product_tabs[data-hook]",
                     :text => "    <li<%== ' class=\"active\"' if current == \"Mp3 Previews\" %>>
      <%= link_to t(\"mp3_previews\"), admin_product_mp3s_path(@product) %>
    </li>
",
                     :disabled => false)
