class SpreeMp3playerHooks < Spree::ThemeSupport::HookListener
  
  # Adds the administation section links under "products"
  insert_after :admin_product_tabs do
    <<-END
    <li<%== ' class="active"' if current == "Mp3 Previews" %>>
      <%= link_to t("mp3_previews"), admin_product_mp3s_path(@product) %>
    </li>
    END
  end
  
  # Adds the mp3 player(s) on the product details page
  insert_after :product_images do
    <<-END
    <div id="mp3_players">
      <%= render @product.mp3s %>
    </div>
    END
  end

end