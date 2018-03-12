require 'menus_controller.rb'

class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :update, :get_category_names, :get_subcategory]
  before_action :get_category_names, only: [:create, :new]
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
    @category_names = get_category_names
    @subcategory_names = get_subcategory_names
    @menu_item = MenuItem.new(menu_item_params)
    # @menu_item.user = current_user
    @menu_item.save!
    # if @menu_item.save
    #     puts "save @menu_item #{@menu_item.errors.inspect}"
    #     redirect_to menu_item_path(@menu_item), notice: 'G2g'
    #   else

    #     puts "failed @menu_item #{@menu_item.errors.inspect}"

    #     render :new
    # end


    # @menu = Menu.last
    # @menu.user = current_user
    redirect_to menu_item_path(@menu_item)
  end

  def new
    @category_names = get_category_names
    @subcategory_names = get_subcategory_names
    @menu_item = MenuItem.new
    @menu = Menu.last

    # redirect_to menu_item_path(@menu_item)
  end

  def update
    @menu_item = MenuItem.find(params[:id])
    @menu_item.user = current_user
    if @menu_item.update(menu_item_params)
      redirect_to menu_item_path(@menu_item)
    else
      render :edit
    end
  end



  def delete
  end

  def show
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
    params.require(:menu_item).permit(:name, :description, :id, :menu_id)
  end

end
