require 'rails_helper'

describe 'the delete a drink process' do
  it 'should allow a user to delete a drink' do
    drink = FactoryGirl.create(:drink)
    login_as(drink.user, :scope => :user, :run_callbacks => false)
    visit drink_path(drink)
    click_on 'Delete Drink'
    expect(page).to have_no_content drink.name
  end

end
