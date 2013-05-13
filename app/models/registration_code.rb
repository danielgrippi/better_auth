class RegistrationCode < ActiveRecord::Base
  attr_accessible :token

  validates :token,
    presence: true
end
