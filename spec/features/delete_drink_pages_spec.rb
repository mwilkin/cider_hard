require 'rails_helper'

describe 'the delete a drink process' do
  it 'should allow a user to delete a drink' do
    visit drinks_path
    click_link "New Drink"
    fill_in 'Name', :with => 'Matt\'s Hard Ginger Nectar'
    fill_in 'Fruit', :with => 'Ginger'
    fill_in 'Origin', :with => 'Portland, OR'
    fill_in 'Description', :with => 'crisp with ginger overtones'
    fill_in 'Cost', :with => 15
    click_on 'Create Drink'
    click_on 'Matt\'s Hard Ginger Nectar'
    click_on 'Delete Drink'
    expect(page).to have_no_content 'Matt\'s Hard Ginger Nectar'
  end

end
