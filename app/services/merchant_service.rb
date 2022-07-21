class MerchantService
  class << self

  def get_merchants
    call_api("/api/v1/merchants")
  end

  def get_merchant_items(merchant_id)
    call_api("/api/v1/merchants/#{merchant_id}/items")
  end

  private
    def call_api(path)
      response = conn.get(path)
      parsed_data(response)
    end

    def conn
      conn = Faraday.new(url: 'http://localhost:3000')
    end

    def parsed_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
