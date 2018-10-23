class ProductsController < ApplicationController
  def index
    @response = JSON.parse(HTTParty.get('http://lcboapi.com/products/?page=8').body)

    respond_to do |format|
      format.html {
        render :index
      }
      format.json {
        render json: @response
      }
    end
  end
end
