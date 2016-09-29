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

  factory :batch do
    drink
    batch_name 'alpha'
    fruit_weight 2000
    fruit_type 'pear'
    barrel_type 'American oak'
    temperature 65.4
    alcohol_content 9.9
    pH 7.2
    fruit_cost 0.25
  end
end
