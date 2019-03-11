# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Debtor.destroy_all
Debt.destroy_all

@Jessica_Ramirez = Debtor.create (
  {
    name: 'Jessica Ramirez' ,
    email: 'jessica@gmail.com' ,
    phone_num: '312-283-2846'
  }
)

@James_Smith = Debtor.create (
  {
    name: 'James Smith' ,
    email: 'Jamess@gmail.com' ,
    phone_num: '312-324-2344'
  }
)

Debt.create(
  [
    {amount: '5.00', date_borrowed: '2018-12-29', date_due: '2019-01-20', description: 'restaurant bill money', debtor: @Jessica_Ramirez},
    {amount: '50.00', date_borrowed: '2019-01-01', date_due: '2019-01-30', description: 'electric bill money', debtor: @James_Smith}
  ]
)
