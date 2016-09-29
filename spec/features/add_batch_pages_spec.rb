require 'rails_helper'

describe 'the add a batch process'do
  it 'add a batch', js: true  do
    drink = FactoryGirl.create(:drink)
    login_as(drink.user, :scope => :user, :run_callbacks => false)
    visit drinks_path
    click_link "Brazen Apple"
    click_link 'Add a Batch'
    fill_in 'Batch name', :with => 'alpha'
    fill_in 'Fruit type', :with => 'pear'
    fill_in 'Barrel type', :with => 'American oak'
    fill_in 'Fruit weight', :with => 2000
    fill_in 'Fruit cost', :with => 0.25
    fill_in 'Alcohol content', :with => 9.5
    fill_in 'Temperature', :with => 64
    fill_in 'Ph', :with => 7.2
    click_on 'Create Batch'
    expect(page).to have_content 'alpha'
  end

  it 'gives an error when a field is left blank', js: true do
    drink = FactoryGirl.create(:drink)
    login_as(drink.user, :scope => :user, :run_callbacks => false)
    visit drink_path(drink)
    click_link 'Add a Batch'
    fill_in 'Batch name', :with => ''
    fill_in 'Fruit type', :with => 'pear'
    fill_in 'Barrel type', :with => 'American oak'
    fill_in 'Fruit weight', :with => 2000
    fill_in 'Fruit cost', :with => 0.25
    fill_in 'Alcohol content', :with => 9.5
    fill_in 'Temperature', :with => 64
    fill_in 'Ph', :with => 7.2
    click_on 'Create Batch'
    expect(page).to have_content 'errors'

  end

end
