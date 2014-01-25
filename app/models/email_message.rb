class EmailMessage < ActiveRecord::Base
  has_many  :email_addresses
  validates :message, presence: true

end
