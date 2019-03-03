class Debtor < ApplicationRecord
  has_many :debt
  validates :name, presence: true
  validates :email, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: 'Invalid email'
  }
  validates :phone_num, format: {
    with: /\d{3}-\d{3}-\d{4}/,
    message: "Invalid phone number" 
  }
end
