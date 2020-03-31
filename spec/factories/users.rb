FactoryBot.define do
  factory :user do
    email { "user@mail.com" }
    password { 'password' }
    password_confirmation { 'password' }
    role { 'registred_user' }
    factory :subscriber do
      role { 'subscriber' }
    end
    factory :journalist do
      role { 'journalist' }
    end
  end
end
