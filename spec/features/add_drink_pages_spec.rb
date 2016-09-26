require 'rails_helper'

describe "the add a drink process" do
  it 'adds a new drink' do
    visit drinks_path
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
    visit new_drink_path
    click_on 'Create Drink'
    expect(page).to have_content 'errors'
  end

end
