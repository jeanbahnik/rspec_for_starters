class UsersController < ApplicationController

  def show
    id = params[:id]
    @user = User.find_by_id(id)
  end

  def update
    @user = User.find_by_id(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to(user_path)
    end
  end

end
