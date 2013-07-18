# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :discussion do
    content "MyText"
    user_id 1
    type ""
  end
end
