# spec/models/user_spec.rb 

require 'spec_helper' 

describe Notices::User do 
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without a first_name" do
    FactoryGirl.build(:user, first_name: nil).should_not be_valid
  end
  it "is invalid without a last_name" do
    FactoryGirl.build(:user, last_name: nil).should_not be_valid
  end
  it "is invalid without a email_address" do
    FactoryGirl.build(:user, email_address: nil).should_not be_valid
  end
  it "returns a user's full name as a string" do
    myuser = FactoryGirl.create(:user, first_name: "John", last_name: "Doe") 
    myuser.full_name.should == "John Doe"
  end
  it "is invalid if password and password_confirmation do not match" do
    @pwduser = FactoryGirl.create(:user, password: "pwd", password_confirmation: "pwd") 
    @pwduser.password.should == @pwduser.password_confirmation
  end
  it "is invalid if login email and registered email do not match" do
    @loginuser = FactoryGirl.build(:user)
    @reguser = FactoryGirl.create(:user, email_address: "anup@patil.se")
    @loginuser.email_address.should == @reguser.email_address
  end
  it "is invalid if login (username, password) and registered (username, password) do not match" do
    @loginuser = FactoryGirl.build(:user)
    @reguser = FactoryGirl.create(:user, email_address: "anup@patil.se", password: "password")
    @loginuser.password.should == @reguser.password && @loginuser.email_address.should == @reguser.email_address
  end
end
