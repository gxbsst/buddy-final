
FactoryGirl.define do
  factory :share, :class => Refinery::Shares::Share do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

