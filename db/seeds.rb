# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Client.destroy_all
Project.destroy_all
Task.destroy_all

u = User.create([{name: 'test', password: 'test'}])

clients = Client.create([{name: 'badass business'},
                         {name: 'nightmare client llc'}])

projects = Project.create([{name: "Immigration", client_id: clients[0].id},
                           {name: "Drunk Driving", client_id: clients[0].id},
                           {name: "Foreclosure", client_id: clients[1].id}])


tasks = Task.create([{description: "First meeting", project_id: projects[0].id, time: 3.5, status: 'billed' },
                     {description: "Estimate", project_id: projects[0].id, time: 1.1, status: 'unbilled'},
                     {description: "First meeting", project_id: projects[1].id, time: 2, status: 'unbilled'},
                     {description: "Phone call about estimate", project_id: projects[1].id, time: 0.3, status: 'unbilled'},
                     {description: "First meeting", project_id: projects[2].id, time: 1.4, status: 'billed'},
                     {description: "Paperwork", project_id: projects[2].id, time: 4.2, status: 'billed'}])

puts "Database seeded"
