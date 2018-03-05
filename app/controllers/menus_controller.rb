class MenusController < ApplicationController
  before_action :set_menu, only:[:show, :edit, :update, :get_category, :get_subcategory]

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

    ## Calls private methods to send category names
    ## to view
    @category_names = get_category_names
    @subcategory_names = get_subcategory_names
  end

  def update
    @menu.save
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


  def menu_parameters
    params.permit(:name)
  end


end
