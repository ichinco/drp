class DrpMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_email(user)
    @name  = user.first_name
    @email = user.email
   mail(to: @email, subject:'DRP')
  end

end
