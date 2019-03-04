require 'test_helper'

class DebtorTest < ActiveSupport::TestCase
  test "debtor attributes must not be empty" do
    debtor = Debtor.new
    assert debtor.invalid?
    assert debtor.errors[:name].any?
    assert debtor.errors[:email].any?
    assert debtor.errors[:phone_num].any?
  end
end
