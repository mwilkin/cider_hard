require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit new_user_registration_path
    fill_in 'Email', :with => 'test@testemail.com'
    fill_in 'Password', :with => 'mypassword'
    fill_in 'Password confirmation', :with => 'mypassword'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome'
  end

  it 'gives an error when no email is entered' do
    visit new_user_registration_path
    click_on 'Sign up'
    expect(page).to have_content 'errors'
  end
end

describe 'user log in process' do
  it 'allows an existing user to sign in' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit drinks_path
    expect(page).to have_content('Sign Out')
  end
end
