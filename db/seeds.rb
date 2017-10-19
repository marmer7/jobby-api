# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{ first_name: "Marlon", last_name: "Merjos", email: "marmaid@gmail.com"},
  { first_name: "Bobby", last_name: "Huang", email: "bobbybighuang@gmail.com"}])

for i in 0..10
  Company.create({name: "Company #{i}", url: "www.google#{i}.com", industry: "#{i%2 == 0 ? "Tech" : "Finance"}"})
end

company_users = []
for i in 0..10
  company_users.push(CompanyUser.create({user_id: i%2, company_id: i}))
end

company_users.each do |company_user|
  contact = Contact.create(email: "joe@email.com", full_name: "Joe", title: "Janitor", company_user: company_user)
  job = Job.create(title: "CEO", url: "google.com", company_user: company_user)
  ContactJob.create({contact: contact, job: job})
end
