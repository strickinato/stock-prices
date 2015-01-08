class PricesController < ApplicationController
  def index
    @prices = Price.where({company_id: params[:company_id]})

    render :json => @prices
  end
end
