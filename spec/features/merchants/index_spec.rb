require 'rails_helper'
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
RSpec.describe 'Merchant index' do
  it 'lists all merchants' do
    visit '/merchants'
    expect(page).to have_link("Schroeder-Jerde")
    click_link("Schroeder-Jerde")
    expect(current_path).to eq("/merchants/1")
    expect(page).to have_content("Item Nemo Facere")
  end
end
