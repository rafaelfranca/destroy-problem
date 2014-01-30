FactoryGirl.define do
  factory :role do
    affiliation
    sequence(:name)    { |n| "role_#{n}" }
  end
end
