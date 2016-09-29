require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit '/'
    expect(page).to have_content 'Home Page'
  end
end
