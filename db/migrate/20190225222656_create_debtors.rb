class CreateDebtors < ActiveRecord::Migration[5.2]
  def change
    create_table :debtors do |t|
      t.string :name
      t.string :email
      t.string :phone_num

      t.timestamps
    end
  end
end
