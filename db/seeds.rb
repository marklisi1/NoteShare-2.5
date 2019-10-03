# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

courselist = [{:name => 'Math', :prof => 'John Doe'},
              {:name => 'English', :prof => 'Jane Smith'},
              {:name => 'Chemistry', :prof => 'John Oxygen'},
              {:name => 'History', :prof => 'Mary Oldstuff'},
              {:name => 'Spanish', :prof => 'Dave Spain'},
              {:name => 'Linear Algebra', :prof => 'Mark Matrix'},
              {:name => 'Probability', :prof => 'Tom Bayes'}
              ]

courselist.each do |course|
    Course.create!(course)
end
