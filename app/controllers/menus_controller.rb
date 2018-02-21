class MenusController < ApplicationController
  before_action :set_menu, only:[:show, :edit]

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def show
  end

  def edit
    @menu.update(menu_parameters)
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_parameters
    params.require(:menu).permit(:user, :name, :description, :time_start, :time_end, :days_available)
  end

end
