# spec/models/product_spec.rb 

require 'spec_helper'

describe Notices::Product do
  it "has a valid factory" do
    FactoryGirl.create(:product).should be_valid
  end
  it "is invalid without a notice_category" do
    FactoryGirl.build(:product, product_category_id: nil).should_not be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:product, name: nil).should_not be_valid
  end
  it "is invalid without a description" do
    FactoryGirl.build(:product, description: nil).should_not be_valid  
  end
  it "is invalid without a short_description" do
    FactoryGirl.build(:product, short_description: nil).should_not be_valid  
  end
  it "is only of category Notice" do
    mynot = FactoryGirl.create(:notice) 
    mynot.product_category_id.should == 4
  end
  it "is only of category Event" do
    mynot = FactoryGirl.create(:event) 
    mynot.product_category_id.should == 5
  end
  it "is only of category Buy/Sell" do
    mynot = FactoryGirl.create(:buysell) 
    mynot.product_category_id.should == 6
  end
  it "is of category Buy/Sell is invalid without price" do
    FactoryGirl.build(:buysell, price: nil).should_not be_valid
  end

end
