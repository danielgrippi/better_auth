class Registration < ActiveRecord::Base
  attr_accessible :token, :email

  validates :token, :email,
    presence: true
end
