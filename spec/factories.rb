FactoryGirl.define do


  factory :user do
    email('test@email.com')
    password('password')
    password_confirmation('password')
  end

  factory :drink do
    name('Brazen Apple')
    fruit('Apple')
    origin('Medford')
    description 'crisp'
    cost(12)
    user
  end
end
