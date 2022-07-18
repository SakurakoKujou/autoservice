class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

def index
  @q = Order.ransack(params[:q])
  @order = @q.result(distinct: true)
  respond_to do |format|
    format.html
    format.xlsx
  end
  end

  def new
    @order = Order.new
  end

  def create
    @order=Order.new(order_params)
    @order.save
    redirect_to @order
  end


  def show
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_path
  end

  def order_params
    params.require(:order).permit(:nameOrder, :service_id, :created_at)
  end

  def set_order
    @order = Order.find(params[:id])
  end

    
end
