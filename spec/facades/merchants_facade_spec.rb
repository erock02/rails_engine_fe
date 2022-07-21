require 'rails_helper'

RSpec.describe MerchantsFacade do
  it 'turns the data in to Merchant poros' do
    expected = MerchantsFacade.all_merchants
    expect(expected.class).to eq Array
    expect(expected).to be_all Merchant
  end

  it 'turns the data in to Item poros' do
    expected = MerchantsFacade.all_merchant_items(1)
    expect(expected.class).to eq Array
    expect(expected).to be_all Item
  end
end
