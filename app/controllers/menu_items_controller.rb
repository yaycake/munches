class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :get_name]

  def index
    @menu_items = MenuItem.all
  end

  def edit
    @menu_item = MenuItem.new
  end

  def create
    menu_item = MenuItem.new(name: params[:name], description: params[:description])
    menu_item.save
  end

  def new
  end

  def update
  end

  def delete
  end

  def show
  end

  private

  def get_name(type, id)

  end

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

  def menu_item_parameters
    params.require(:menu_item).permit(:user, :name, :description, :menu_subcategory_id, :menu_category_id, :menu_id, :in_stock, :price_id)
  end

end
