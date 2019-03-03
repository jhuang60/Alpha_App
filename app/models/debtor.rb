class Debtor < ApplicationRecord
  has_many :debt
  validates :name, presence: true, uniqueness: true
  validates :email, :phone_num, allow_blank: true, uniqueness: true

  validates :email, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: 'Invalid. Please double check the email entered.'
  }
  validates :phone_num, format: {
    with: /\d{3}-\d{3}-\d{4}/,
    message: "Invalid. Please double check the number entered."
  }
  
end
