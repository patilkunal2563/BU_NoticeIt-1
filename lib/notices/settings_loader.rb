module Notices
  class SettingsLoader
    
    def initialize(app)
      @app = app
    end
    
    def call(env)
      Notices.reset_settings
      @app.call(env)
    ensure
      Notices.reset_settings
    end
    
  end
end
