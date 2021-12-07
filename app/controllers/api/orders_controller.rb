class Api::OrdersController < ApplicationController
  def create
    order = Order.new 
    binding.pry 
  end
end
