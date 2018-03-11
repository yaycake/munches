require 'menus_controller'

class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :update, :get_category, :get_subcategory]

  def index
    @menu_items = MenuItem.all
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
    @menu = @menu_item.menu_id
    @category_names = get_category_names
    @subcategory_names = get_subcategory_names
  end

  def create
    menu_item = MenuItem.new(
      name: params[:name],
      description: params[:description]

    )
    menu_item.save
  end

  def new
    @menu_item = MenuItem.new
  end

  def update
    @menu_item = MenuItem.find(params[:id])

    if @menu_item.update(menu_item_params)
      redirect_to menu_path(@menu)
    else
      render :edit
    end
  end



  def delete
  end

  def show
    @menu_item
  end

  private

  ###### GETS CATEGORY AND SUBCATEGORY NAMES
  ###### FOR ADMIN DROPDOWNS
  def get_category_names
     categories = MenuCategory.all
     names = []
     categories.each do |category|
        names << category.name
      end
    @category_names = names
  end

  def get_subcategory_names
     subcategories = MenuSubcategory.all
     names = []
     subcategories.each do |subcategory|
        names << subcategory.name
      end
    @subcategory_names = names
  end

  def get_category
    @category = @menu_item.menu_category
  end

  def get_subcategory
    @subcategory = @menu_item.menu_subcategory
  end

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :menu_subcategory_id, :menu_category_id, :menu_id, :in_stock, :price_id, :menu_item_id, :user_id)
  end

end
