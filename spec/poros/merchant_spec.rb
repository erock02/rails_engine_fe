require 'rails_helper'

RSpec.describe 'merchant poro' do
  it 'has attributes' do
    data = {
            :id => "1",
            :type => "merchant",
            :attributes => {
              :name=>"Schroeder-Jerde"
            }
    }

    merchant1 = Merchant.new(data)
    expect(merchant1).to be_a(Merchant)
    expect(merchant1.id).to eq(1)
    expect(merchant1.name).to eq("Schroeder-Jerde")
  end
end
