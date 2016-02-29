class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show

  end

  def update
    current_user.update(user_params)
    flash[:notice] = "User update successfully"
    redirect_to :back
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday)
  end
end
