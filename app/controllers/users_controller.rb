class UsersController < ApplicationController
  def view
    @users = Users.all
  end

  def show
    #
    # change roles_string
    #
    @user  = Users.find(params[:id])
    @name  = "#{@user.first_name} #{@user.last_name}" 
    @email = @user.email
    roles = ["admin"]
    if @user.mentor_profile
        roles << "mentor"
    end
    @roles_string = roles.join ", "
  end

  def send_msg
    @user = Users.find(params[:id])
    DrpMailer.new_email(@user).deliver
    @users = Users.all
    render 'users/view'
  end

end
