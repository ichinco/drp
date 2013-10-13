module SessionsHelper
    def current_user=(user)
        @current_user = user
    end


    def my_logger
        @@my_logger ||= Logger.new("/tmp/my.log")
    end

    def current_user
        remember_token = Users.encrypt (cookies[:remember_token])
        @current_user ||= Users.find_by(remember_token: remember_token)
    end

    def sign_in(user)
        my_logger.info user.email
        remember_token = Users.new_remember_token
        cookies.permanent[:remember_token] = remember_token
        user.update_attribute(:remember_token, Users.encrypt(remember_token))
        self.current_user = user
    end

    def signed_in?
        !current_user.nil?
    end
end
