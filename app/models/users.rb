class Users < ActiveRecord::Base
    has_secure_password
    validates :password, length: { minimum: 12 }
end
