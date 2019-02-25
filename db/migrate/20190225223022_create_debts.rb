class CreateDebts < ActiveRecord::Migration[5.2]
  def change
    create_table :debts do |t|
      t.decimal :amount
      t.date :date_borrowed
      t.date :date_due
      t.text :description

      t.timestamps
    end
  end
end
