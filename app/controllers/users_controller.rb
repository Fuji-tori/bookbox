class UsersController < ApplicationController
  
  def show
    redirect_to root_path unless user_signed_in?
    @nickname = current_user.nickname
  end

  def edit
  end

end
