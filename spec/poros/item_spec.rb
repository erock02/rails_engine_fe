require 'rails_helper'

RSpec.describe 'item poro' do
  it 'has attributes' do
    data = {
              :id=>"4",
              :type=>"item",
              :attributes=> {
                :name=>"Item Nemo Facere",
                :description=>
                "Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
                :unit_price=>42.91,
                :merchant_id=>1
              }
            }

    item1 = Item.new(data)
    expect(item1).to be_a(Item)
    expect(item1.id).to eq(4)
    expect(item1.name).to eq("Item Nemo Facere")
  end
end
