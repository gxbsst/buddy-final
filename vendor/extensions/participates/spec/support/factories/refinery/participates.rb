
FactoryGirl.define do
  factory :participate, :class => Refinery::Participates::Participate do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

