class UsersController < ApplicationController
  
  def show
    redirect_to root_path unless user_signed_in?
    @nickname = current_user.nickname
    @books = current_user.books
    # @recently_visit = cookies[:book_name].split(',') if cookies[:book_name]
  end

  def edit
  end

  def update
    @user = User.find_by(id: params[:id])
    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_avatar}",image.read)
  end

end