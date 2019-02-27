# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

debtor.destroy_all
debtor.destroy_all

@Jessica = debtor.create (
  name: 'Jessica Ramirez',
  email: 'jessica@gmail.com',
  phone_num: '312-283-2846'
)

@James = debtor.create (
  name: 'James Smith',
  email: 'Jamess@gmail.com',
  phone_num: '312-324-2344'
)

debt.create(
  [
    {amount: '5.00', dete_borrowed: '12-29-2018', date_due: '01-20-2019', description: 'restaurant bill money', debtor: @Jessica}
    {amount: '50.00', dete_borrowed: '01-01-2019', date_due: '01-30-2019', description: 'electric bill money', debtor: @James}
  ]
)
