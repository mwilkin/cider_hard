# require 'rails_helper'
#
# describe "the edit a batch process" do
#   it "edits a batch" do
#     drink = Drink.create(:name => "Noah's Nectar", :fruit => "Pear", :origin => "Medford", :description => "crisp and lemony", :cost => 12)
#     batch =  Batch.create(:batch_name => "alpha", :fruit_weight => 1000, :fruit_type => "pear", :barrel_type => "American oak", :temperature => 64, alcohol_content: 9.5, :pH => 7.1, fruit_cost: 0.25)
#     visit drink_batches_path(drink)
#     click_link 'Edit'
#     fill_in 'Batch Name', :with => 'beta'
#     click_on 'Update Batch'
#     expect(page).to have_content 'beta'
#   end
# end
