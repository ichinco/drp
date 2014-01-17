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
      @user = self.current_user
      @profile = @user.mentor_profile
      if ( @profile )
        @interests = @profile.interests
      else 
        @profile = MentorProfile.new
        @interests = []
      end
    end

    params[:interests] = session[:interest]
  end

  def create
    @profile = current_user.mentor_profile || MentorProfile.new 
    @profile.bio = params[:mentor_profile][:bio]
    @profile.users_id = current_user.id
    @interests = @profile.interests
    kept_interests = params[:interest] || []

    @interests.each do |interest|
        unless kept_interests.include? interest[:name]
            interest.mentor_profiles.delete(@profile)
        end
    end
    new_interests_list = params[:interests].downcase
    new_interests_list.split(',').each do |interest|
        #clean string first
        interest = interest.downcase.gsub(/\s{2,}/, ' ').strip
        new_interest = Interests.find_by(name: interest) || \
                       Interests.new(name: interest)
        if !@profile.interests.include?(new_interest) && \
           new_interest.save
           @profile.interests << new_interest
        end
    end    
    if (@profile.save)
       flash[:success] = "Your profile was saved succesfully."
    end
    #render :new
    session[:interest] = kept_interests
    redirect_to '/mentor_profile/new'
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
