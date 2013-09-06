class UsersController < ApplicationController

  def show
    @user = User.find_by_id(params[:id])
  end

  def update
    user = User.find_by_id(params[:id])

    if user.update_attributes(params[:user])
      redirect_to(user_path)
    else
      render :action => 'edit'
    end
  end

end
