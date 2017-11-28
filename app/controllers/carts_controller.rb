class CartsController < ApplicationController
  
  incluse CurrentCart
  before_action :set_cart
  
  def edit
  end
  
end
