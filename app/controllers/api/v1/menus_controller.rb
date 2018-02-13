class Api::V1::MenusController < Api::V1::BaseController
  def index
    @Menus = policy_scope(Menu)
  end
end
