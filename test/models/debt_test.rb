require 'test_helper'

class DebtTest < ActiveSupport::TestCase
  test "debt attributes must not be empty" do
    debt = Debt.new
    assert debt.invalid?
    assert debt.errors[:amount].any?
    assert debt.errors[:date_borrowed].any?
    assert debt.errors[:date_due].any?
    assert debt.errors[:description].any?
  end
end
