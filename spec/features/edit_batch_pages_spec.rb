require 'rails_helper'

describe "the edit a batch process" do
  it "edits a batch", js: true do
    batch = FactoryGirl.create(:batch)
    login_as(batch.drink.user, :scope => :user, :run_callbacks => false)
    visit drink_path(batch.drink)
    click_link 'Edit'
    fill_in 'Batch name', :with => 'beta'
    click_on 'Update Batch'
    expect(page).to have_content 'beta'
  end
end
