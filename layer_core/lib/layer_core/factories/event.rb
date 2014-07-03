# -*- encoding : utf-8 -*-

FactoryGirl.define do
  factory :event do
    event 'view'
    user
    item
  end
end
