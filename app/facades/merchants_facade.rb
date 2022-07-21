class MerchantsFacade
  def self.all_merchants
    parsed_json = MerchantService.get_merchants
    parsed_json[:data].map do |merchant|
      @merchants = Merchant.new(merchant)
    end
  end

  def self.all_merchant_items(id)
    parsed_json = MerchantService.get_merchant_items(id)
    parsed_json[:data].map do |item|
      @items = Item.new(item)
    end
  end
end
