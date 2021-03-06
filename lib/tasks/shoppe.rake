namespace :notices do
  desc "Load seed data for the Shoppe"
  task :seed => :environment do
    require File.join(Shoppe.root, 'db', 'seeds')
  end
  
  desc "Create a default admin user"
  task :create_default_user => :environment do
    Shoppe::User.create(:email_address => 'admin@example.com', :password => 'password', :password_confirmation => 'password', :first_name => 'Default', :last_name => 'Admin')
    puts
    puts "    New user has been created successfully."
    puts
    puts "    E-Mail Address..: admin@example.com"
    puts "    Password........: password"
    puts
  end
  
  desc "Import default set of countries"
  task :import_countries => :environment do
    Shoppe::CountryImporter.import
  end
  
  desc "Run the key setup tasks for a new application"
  task :setup => :environment do
    Rake::Task["shoppe:import_countries"].invoke    if Shoppe::Country.all.empty?
    Rake::Task["shoppe:create_default_user"].invoke if Shoppe::User.all.empty?
  end
  
end