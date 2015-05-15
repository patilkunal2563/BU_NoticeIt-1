class PagesController < ApplicationController
  
 

  def home
	if session[:shoppe_user_id]
        
        @products = Notices::Product.active.includes(:default_image, :product_category, :variants).root
        
	else 
	
       redirect_to "/notices/login"
      end
    
  end
  
end

