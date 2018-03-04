class MenusController < ApplicationController
  before_action :set_menu, only:[:show, :edit]

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    menu = Menu.new(name: params[:name], description: params[:description], time_start: params[:time_start], time_end: params[:time_end], days_available: params[:days_available])
    menu.save
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
    params.permit(:name)
  end

end
