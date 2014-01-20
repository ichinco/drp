class UsersController < ApplicationController
  def view
  end

  def show
    @user  = Users.find(params[:id])
    @name  = "#{@user.first_name} #{@user.last_name}" 
    @email = @user.email
  end
end
