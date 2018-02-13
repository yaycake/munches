class Api::V1::MenusController < Api::V1::BaseController
  before_action :set_menu, only: [ :show ]

  def show
  end

  def index
    @menus = policy_scope(Menu)
  end

  private

  def set_menu
    @menus = Menu.find(params[:id])
    authorize @menu  # For Pundit
  end

end
