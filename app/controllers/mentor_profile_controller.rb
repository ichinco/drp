class MentorProfileController < ApplicationController
    def my_logger
        @@my_logger ||= Logger.new("/tmp/my.log")
    end
    
  def index
    @users = Users.all
  end

  def new
    unless signed_in?
      redirect_to "/sessions/new"
    else
      my_logger.info 'line 10'
      my_logger.info self.current_user.email
      @user = self.current_user
      @profile = @user.mentor_profile
      unless (@profile)
        @profile = MentorProfile.new
      end
    end
  end

  def create
    @profile = current_user.mentor_profile || MentorProfile.new 
    @profile.bio = params[:mentor_profile][:bio]
    @profile.users_id = current_user.id
    if (@profile.save)
        
    end
  end

  def profile_params
    params.permit('bio')
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
