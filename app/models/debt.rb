class Debt < ApplicationRecord
  belongs_to :debtor
  validates :amount, :date_borrowed, :date_due, :description, presence: true

  def debtor_name=(name)
    self.debtor = Debtor.find_or_create_by(name: name)
  end

  def debtor_name
    self.debtor ? self.debtor.name : nil
  end

end
