module Spree
  class Admin::Mp3sController < Spree::Admin::ResourceController
    belongs_to "spree/product", find_by: :permalink 
    
    protected
    
      def parent
        if parent_data.present?
          # if params["product_id"]
          @parent ||= parent_data[:model_class].where(parent_data[:find_by] => params["#{model_name}_id"]).first
          instance_variable_set("@#{model_name}", @parent)
        else
          nil
        end
      end
      
      def location_after_save
        admin_product_mp3s_url(@product) 
      end
  end
end