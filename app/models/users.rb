class Users < ActiveRecord::Base
    before_save { self.email = email.downcase }
    before_create :create_remember_token
    has_one :mentor_profile, dependent: :destroy
    has_secure_password
    validates :password, length: { minimum: 12 }
    validates :first_name, presence: true
    validates :last_name, presence: true

    def Users.encrypt(token)
        Digest::SHA1.hexdigest(token.to_s)
    end

    def Users.new_remember_token
        SecureRandom.urlsafe_base64
    end

    private

        def create_remember_token
            self.remember_token = Users.encrypt(Users.new_remember_token)
        end

end
