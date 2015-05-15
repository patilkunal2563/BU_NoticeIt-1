require 'rails/generators'
module Notices
  class SetupGenerator < Rails::Generators::Base
    
    def create_route
      route 'mount Notices::Engine => "/notices"'
    end

  end
end
