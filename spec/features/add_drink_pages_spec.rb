require 'rails_helper'

describe "the add a drink process" do
  it 'adds a new drink' do
    user = User.create({email: 'test@email.com',
    password: 'password', password_confirmation:'password'})
    login_as(user, :scope => :user, :run_callbacks => false)
    visit root_path
    click_link "Cider List"
    click_link "New Drink"
    fill_in 'Name', :with => 'Noah\'s Nectar'
    fill_in 'Fruit', :with => 'Apple'
    fill_in 'Origin', :with => 'Medford, OR'
    fill_in 'Description', :with => 'crisp with floral notes'
    fill_in 'Cost', :with => 12
    click_on 'Create Drink'
    expect(page).to have_content 'Noah\'s Nectar'
  end

  it 'gives an error when no name is entered' do
    user = User.create({email: 'test@email.com',
    password: 'password', password_confirmation:'password'})
    login_as(user, :scope => :user, :run_callbacks => false)
    visit root_path
    click_link "Cider List"
    click_link "New Drink"
    click_on 'Create Drink'
    expect(page).to have_content 'errors'
  end

end
