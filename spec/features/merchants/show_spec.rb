require 'rails_helper'

RSpec.describe 'Merchant show' do
  it 'lists all of a merchants items' do
    visit '/merchants/1'
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Ea Voluptatum")
  end
end
