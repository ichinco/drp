class SessionsController < ApplicationController

  def new
  end

  def create
    email = params[:session][:email]
    @user = Users.find_by email: email
    if @user && (@user.authenticate params[:session][:password] )
        sign_in @user
        flash[:success] = "Flashing some stuff"
    else
      flash[:error] = "Unable to authenticate"
      render "new"
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
