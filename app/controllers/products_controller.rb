class ProductsController < ApplicationController
  def index
    @response = JSON.parse(HTTParty.get('http://lcboapi.com/products/?page=8').body)
  end
end
