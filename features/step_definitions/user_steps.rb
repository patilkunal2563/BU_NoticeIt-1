Given /^a valid user$/ do
  @user = Notices::User.create!({
             :first_name => "anup",
             :last_name => "patil",
             :email_address => "anup@patil.se",
             :password => "password",
             :password_confirmation => "password"
           })
end

Given /^a logged in user$/ do
  Given "a valid user"
  visit :home
  fill_in "email_address", :with => "anup@patil.se"
  fill_in "Password", :with => "password"
  click_button "Login"
end

Given /^notice categories$/ do
  @categories = Notices::ProductCategory.create!({
      :id => 4,
      :name => "Event",
      :permalink => "event",
      :description => "This category allows user to add notices related to events."
       })
  @categories1 = Notices::ProductCategory.create!({
      :id => 5,
      :name => "BuySell",
      :permalink => "buyandsell",
      :description => "This category allows user to add notices related to buy and sell."
      })
  @categories2 = Notices::ProductCategory.create!({
      :id => 6,
      :name => "Notices",
      :permalink => "notices",
      :description => "This category allows user to add notices related to simple notices."
      })
end

Given /^a valid notice$/ do
  @notice = Notices::Product.create!({
             :id => 1,
             :product_category_id => 4,
             :name => "sample",
             :permalink => "sample",
             :description => "description of the notice",
             :short_description => "short desc",
             :tax_rate_id => 2
           }) 
end

Given /^a valid viewnotice$/ do

  @notice = Notices::Product.create!({
                                         :id => 1,
                                         :product_category_id => 4,
                                         :name => "sample",
                                         :permalink => "sample",
                                         :description => "description of the notice",
                                         :short_description => "short desc",
                                         :tax_rate_id => 1,
                                         :stock_control => false
                                     })
end
