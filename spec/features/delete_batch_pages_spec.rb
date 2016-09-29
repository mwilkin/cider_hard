require 'rails_helper'

describe 'the delete a batch process' do
  it 'should allow a user to delete a batch' do
    batch = FactoryGirl.create(:batch)
    login_as(batch.drink.user, :scope => :user, :run_callbacks => false)
    visit drink_path(batch.drink)
    click_link 'Delete'
    expect(page).to have_no_content batch.batch_name

  end
end
