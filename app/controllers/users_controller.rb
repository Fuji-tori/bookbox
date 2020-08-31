class UsersController < ApplicationController
  
  def show
    redirect_to root_path unless user_signed_in?
    @nickname = current_user.nickname
    @books = current_user.books
  end
  
  def edit
  end

end
