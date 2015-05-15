module Notices
  class Engine < ::Rails::Engine
    isolate_namespace Notices
    
    if Notices.respond_to?(:root)
      config.autoload_paths << File.join(Notices.root, 'lib')
      config.assets.precompile += ['notices/sub.css', 'notices/printable.css']
    end
    
    # We don't want any automatic generators in the engine.
    config.generators do |g|
      g.orm             :active_record
      g.test_framework  false
      g.stylesheets     false
      g.javascripts     false
      g.helper          false
    end
    
    initializer 'notices.initialize' do |app|
      # Add the default settings
      Notices.add_settings_group :system_settings, [:store_name, :email_address, :currency_unit, :tax_name, :demo_mode]
      
      # Add middleware
      app.config.middleware.use Notices::SettingsLoader
      
      # Load our migrations into the application's db/migrate path
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end      
      
      # Load view helpers for the base application
      ActiveSupport.on_load(:action_view) do
        require 'notices/view_helpers'
        ActionView::Base.send :include, Notices::ViewHelpers
      end
      
      # Load default navigation
      require 'notices/default_navigation'
    end
    
    generators do
      require 'notices/setup_generator'
    end
    
  end
end

