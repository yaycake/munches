# users_controller.rb
class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: [ :show ]

  def show
  end

  def index
    @users = User.all
  end

  private

  def set_user
    @user = user.find(params[:id])
    authorize @user  # For Pundit
  end

end
