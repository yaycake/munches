require 'menu_items_controller'

class MenusController < ApplicationController
  before_action :set_menu, only:[:show, :edit, :update, :get_category, :get_subcategory]

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  # def item
  #   @item = Item.find(item_params)
  # end

  def create
    @menu = Menu.new(menu_params)
    @menu.save!
  end

  def show
  end

  def edit

    ## Calls private methods to send category names
    ## to view
    @category_names = get_category_names
    @subcategory_names = get_subcategory_names
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.user = current_user

    if @menu.update(menu_params)
      redirect_to menu_path(@menu)
    else
      render :edit
    end

    @items = @menu.menu_items

    # @item = Item.find(params[:id])

    # if @item.update(item_params)
    #   redirect_to menu_path(@menu)
    # else
    #   render :edit
    # end
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
    @category = @menu.menu_category
  end

  def get_subcategory
    @subcategory = @menu.menu_subcategory
  end

  ###########
  ###########

  def set_menu
    @menu = Menu.find(params[:id])
    @menu_items = Menu.find(params[:id]).menu_items
  end

  def menu_params
    params.require(:menu).permit(:name, :description, :time_start, :time_end)
  end

  def item_params
    params.require(:menu_item).permit(:name, :description)
  end

end
