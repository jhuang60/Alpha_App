class Debt < ApplicationRecord
  belongs_to :debtor
  validates :amount, :date_borrowed, :date_due, :description presence: true
end
