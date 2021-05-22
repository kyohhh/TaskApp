FactoryBot.define do
  factory :user do
    name                            { 'test' }
    email                           { 'test@sample.com' }
    password                        { 'aaa111' }
    password_confirmation           { password }
  end
end
