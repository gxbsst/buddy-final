
FactoryGirl.define do
  factory :application, :class => Refinery::Applications::Application do
    sequence(:volunteer_url) { |n| "refinery#{n}" }
  end
end

