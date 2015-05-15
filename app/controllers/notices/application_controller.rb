module Notices
  class ApplicationController < ActionController::Base
    
        
    rescue_from ActiveRecord::DeleteRestrictionError do |e|
      redirect_to request.referer || root_path, :alert => e.message
    end
    
    rescue_from Notices::Error do |e|
      @exception = e
      render :layout => 'notices/sub', :template => 'notices/shared/error'
    end

    private

    def login_required
      unless logged_in?
        redirect_to login_path
      end
    end

    def logged_in?
      current_user.is_a?(User)
    end
    
    def current_user
      @current_user ||= login_from_session || :false
    end

    def login_from_session
      if session[:shoppe_user_id]
        @user = User.find_by_id(session[:shoppe_user_id])
      end
    end
    

    
    helper_method :current_user, :logged_in?
    
  end
end
