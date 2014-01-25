class DrpMailer < ActionMailer::Base
  default from: "drp@math.rutgers.edu"

  def new_email(user)
    @name  = user.first_name
    @email = user.email
    mail(to: @email, subject:'DRP')
  end

end
