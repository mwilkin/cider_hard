require 'rails_helper'

describe "the edit a drink process" do
  it 'edits a new drink', js: true do
    drink = Drink.create(:name => "Noah's Nectar", :fruit => "Pear", :origin => "Medford", :description => "crisp and lemony", :cost => 12)
    user = User.create({email: 'test@email.com',
    password: 'password', password_confirmation:'password'})
    login_as(user, :scope => :user, :run_callbacks => false)
    click_link 'Noah\'s Nectar'
    click_link 'Update Drink'
    fill_in 'Name', :with => 'Noah\'s Fantastic Nectar'
    click_on 'Update Drink'
    expect(page).to have_content 'Noah\'s Fantastic Nectar'
  end

  it 'gives an error when no name is entered', js: true do
    user = User.create({email: 'test@email.com',
    password: 'password', password_confirmation:'password'})
    login_as(user, :scope => :user, :run_callbacks => false)
    click_link "New Drink"
    fill_in 'Name', :with => 'Noah\'s Nectar'
    fill_in 'Fruit', :with => 'Apple'
    fill_in 'Origin', :with => 'Medford, OR'
    fill_in 'Description', :with => 'crisp with floral notes'
    fill_in 'Cost', :with => 12
    click_on 'Create Drink'
    click_link 'Noah\'s Nectar'
    click_link 'Update Drink'
    fill_in 'Name', :with => ''
    click_on 'Update Drink'
    expect(page).to have_content 'errors'
  end

end
