class MentorProfileController < ApplicationController
  def create
    unless signed_in?
      redirect_to "/sessions/new"
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
