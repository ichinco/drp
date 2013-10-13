class MentorProfileController < ApplicationController
    def my_logger
        @@my_logger ||= Logger.new("/tmp/my.log")
    end

  def create
    unless signed_in?
      redirect_to "/sessions/new"
    else
      my_logger.info 'line 10'
      my_logger.info self.current_user.email
      @user = self.current_user
    end
  end

  def update
    unless signed_in?
     redirect_to "/sessions/new"
    end
  end

  def view
  end

  def delete
    unless signed_in?
      redirect_to "/sessions/new"
    end
  end
end
