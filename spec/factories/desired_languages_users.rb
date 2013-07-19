# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :desired_languages_user, :class => 'DesiredLanguagesUsers' do
    desired_language_id 1
    user_id 1
  end
end
