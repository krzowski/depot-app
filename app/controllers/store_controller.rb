class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize

  def index
    @products = Product.order(:title)

    session[:counter] ||= 0
    session[:counter] += 1
    @counter = session[:counter]
  end
end
