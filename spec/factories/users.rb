FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "jsmith#{n}" }
    name { 'John Smith' }
    url { 'http://www.example.com' }
    avatar_url { 'http://www.example.com/avatar' }
    provider { 'github' }
  end
end
