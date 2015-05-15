module Notices
  class SettingsController < ApplicationController
    
    before_filter { @active_nav = :settings }
    
    def update

      Notices::Setting.update_from_hash(params[:settings].permit!)
      redirect_to :settings, :notice => "Settings have been updated successfully."
    end
    
  end
end
