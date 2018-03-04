class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def login
  end

  def sales
  end

  def contact
  end

end
