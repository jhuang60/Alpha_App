class Debt < ApplicationRecord
  belongs_to :debtor
  validates :amount, :date_borrowed, :date_due, :description, presence: true

  def debtor_name=(name)
    self.debtor = Debtor.find_or_create_by(name: name)
  end

  def debtor_name
    self.debtor ? self.debtor.name : nil
  end

  def debtor_email=(email)
    self.debtor = Debtor.find_or_create_by(email: email)
  end

  def debtor_email
    self.debtor ? self.debtor.email : nil
  end

  def debtor_phone_num=(phone_num)
    self.debtor = Debtor.find_or_create_by(phone_num: phone_num)
  end

  def debtor_phone_num
    self.debtor ? self.debtor.phone_num : nil
  end

end
