class Api::V1::OrdersController < Api::V1::BaseController
  before_action :set_order, only: [ :show ]

  def show
  end

  def index
    @orders = policy_scope(Order)
  end

  private

  def set_order
    @orders = Order.find(params[:id])
    authorize @order  # For Pundit
  end

end
