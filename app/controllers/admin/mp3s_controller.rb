class Admin::Mp3sController < Admin::BaseController
  
  resource_controller
  
  index.before do
    @product = Product.find_by_permalink(params[:product_id])
  end
  
  create.wants.html { redirect_to admin_product_mp3s_url(@product) }
  destroy.wants.html { redirect_to admin_product_mp3s_url(@product) }
  
end