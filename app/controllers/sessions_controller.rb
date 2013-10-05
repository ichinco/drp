class SessionsController < ApplicationController

  def new
  end

  def create
    email = params[:session][:email]
    @user = Users.find_by email: email
    if @user && (@user.authenticate params[:session][:password] )

    else
      render "new"
    end
  end

  def destroy
  end
end
