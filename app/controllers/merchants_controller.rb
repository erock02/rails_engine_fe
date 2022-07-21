class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.all_merchants
  end

  def show
    @items = MerchantsFacade.all_merchant_items(params[:id])
  end
end
