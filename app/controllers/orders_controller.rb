class OrdersController < ApplicationController
  def index
    @order_address = OrderAddress.new
  end

  def create
    @order_address = OrderAddress.new(order_params)
      if @order_address.valid?
        @orderaddress.sava
        redirect_to root_path
      else
        render action: :index
      end
  end

  private
  
  def order_params
    params.require(:order_address).permit(:post_code, :prefecture_id, :city, :house_number, :building_name, :phone_number)
  end
end
