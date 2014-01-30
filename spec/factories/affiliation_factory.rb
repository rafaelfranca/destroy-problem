FactoryGirl.define do
  factory :affiliation do
    sequence(:id)         { |n| "affiliation_#{n}" }
    sequence(:name)       { |n| "Affiliation #{n}" }
  end
end
