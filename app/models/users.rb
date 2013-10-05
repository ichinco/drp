class Users < ActiveRecord::Base
    has_secure_password
    validates :password, length: { minimum: 12 }
    validates :first_name, presence: true
    validates :last_name, presence: true
end
