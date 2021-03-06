# coding: utf-8
# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    #name { |n| "Ivan #{n}-й" }
    sequence(:email) { |n| "test#{n}@azbooker.ru" }
    sequence(:password) { |n| "foobar#{n}" }
    sequence(:skypename) { |n| "imskype_#{n}" }
    sequence(:cityid) { |n| (n % 15) - 1 }
    sequence(:phone) { |n| "578 998-35-5#{n}" }
    agreement "1"
  end
end

puts ENV["RAILS_ENV"]