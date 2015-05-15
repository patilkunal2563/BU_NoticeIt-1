module Notices
  FactoryGirl.define do
    factory :product, :class => Product do
      product_category_id 1
      name 'Notice'
      description 'Notice long and detailed Description which will explain a lot of things about this notice'
      short_description 'Short Description'
    end

    factory :notice, :class => Product do
      product_category_id 4
      name 'Notice'
      description 'Notice long and detailed Description which will explain a lot of things about this notice'
      short_description 'Short Description'
    end

    factory :event, :class => Product do
      product_category_id 5
      name 'Event'
      description 'Event long and detailed Description which will explain a lot of things about this notice'
      short_description 'Short Description'
    end

    factory :buysell, :class => Product do
      product_category_id 6
      name 'Buy/Sell'
      price 30
      description 'Buy/Sell long and detailed Description which will explain a lot of things about this notice'
      short_description 'Short Description'
    end
  end
end
