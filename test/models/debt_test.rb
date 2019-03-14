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

  test "debts responds to debtor_name getter" do
   @debt = debts(:Jessica)
   assert_equal @debt.debtor_name, debts(:Jessica).debtor.name
 end

 test "debts responses to debtor_name setter" do
   @debt = debts(:Jessica)
   @debt.debtor_name = debtors(:Jessica_Ramirez).name
   @debt.save
   assert_equal @debt.debtor_name, debtors(:Jessica_Ramirez).name
 end

 test "debts responds to debtor_email getter" do
  @debt = debts(:Jessica)
  assert_equal @debt.debtor_email, debts(:Jessica).debtor.email
end

 test "debts responses to debtor_email setter" do
  @debt = debts(:Jessica)
  @debt.debtor_email = debtors(:Jessica_Ramirez).email
  @debt.save
  assert_equal @debt.debtor_email, debtors(:Jessica_Ramirez).email
end

 test "debts responds to debtor_phone_num getter" do
   @debt = debts(:Jessica)
   assert_equal @debt.debtor_phone_num, debts(:Jessica).debtor.phone_num
end

 test "debts responses to debtor_phone_num setter" do
   @debt = debts(:Jessica)
   @debt.debtor_phone_num = debtors(:Jessica_Ramirez).phone_num
   @debt.save
 assert_equal @debt.debtor_phone_num, debtors(:Jessica_Ramirez).phone_num
end

end
