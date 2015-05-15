module Notices
  FactoryGirl.define do
    
    factory :user, :class => User do
      first_name              'Anup'
      last_name               'Patil'
      email_address           'anup@patil.se'
      password                'password'
      password_confirmation   'password'
    end
  
  end
end
