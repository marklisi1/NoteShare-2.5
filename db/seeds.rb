# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.delete_all
Notesheet.delete_all
User.delete_all

courselist = [{:name => 'Math', :prof => 'John Doe'},
              {:name => 'English', :prof => 'Jane Smith'},
              {:name => 'Chemistry', :prof => 'John Oxygen'},
              {:name => 'History', :prof => 'Mary Oldstuff'},
              {:name => 'Spanish', :prof => 'Dave Spain'},
              {:name => 'Linear Algebra', :prof => 'Mark Matrix'},
              {:name => 'Probability', :prof => 'Tom Bayes'},
              {:name => 'Anthropology', :prof => 'Lebron James'},
              {:name => 'French', :prof => 'Kevin Durant'},
              {:name => 'Music Theory', :prof => 'Kawhi Leonard'},
              {:name => 'Finance', :prof => 'Steph Curry'},
              {:name => 'Marketing', :prof => 'Alex Caruso'},
              {:name => 'Management', :prof => 'Giannis Antetokoumpo'},
              {:name => 'Literature', :prof => 'Zion Williamson'},
              {:name => 'Physics', :prof => 'Kyrie Irving'},
              {:name => 'Biology', :prof => 'James Harden'},
              {:name => 'Organic Chemitry', :prof => 'Russell Westbrook'},
              {:name => 'Calculus', :prof => 'Anthony Davis'},
              {:name => 'Legal Studies', :prof => 'Joel Embiid'},
              {:name => 'Statistics', :prof => 'Klay Thompson'},
              
              ]

courselist.each do |course|
    Course.create!(course)
end






userlist = [{:name => "Carl Hart", :email => "carl.hart@gmail.com", :password => "apple"},
            {:name => "Joe Vance", :email => "joe.vance@gmail.com", :password => "banana"},
            {:name => "Piers McLean", :email => "piers.mclean@gmail.com", :password => "pear"},
            {:name => "Irene Springer", :email => "irene.springer@gmail.com", :password => "peach"},
            {:name => "Kevin Wilkins", :email => "kevin.wilkins@gmail.com", :password => "pineapple"},
            {:name => "Jake Macleod", :email => "jake.macleod@gmail.com", :password => "orange"},
            {:name => "Madeleine Piper", :email => "madeleine.piper@gmail.com", :password => "watermelon"},
            {:name => "Nicholas James", :email => "nicholas.james@gmail.com", :password => "honeydew"},
            {:name => "Sebastian Ball", :email => "sebastian.ball@gmail.com", :password => "cantalope"},
            {:name => "Sam Reid", :email => "sam.reid@gmail.com", :password => "blueberry"},
            {:name => "Carolyn Fisher", :email => "carolyn.fisher@gmail.com", :password => "cherry"},
            {:name => "Samantha Hodges", :email => "samantha.hodges@gmail.com", :password => "blackberry"},
            {:name => "Brian Kelly", :email => "brian.kelly@gmail.com", :password => "raspberry"},
            {:name => "Carl Wright", :email => "carl.wright@gmail.com", :password => "kumquat"},
            {:name => "Rebecca Macdonald", :email => "rebecca.macdonald@gmail.com", :password => "clementine"},
            {:name => "Maria Hunter", :email => "maria.hunter@gmail.com", :password => "papaya"},
            {:name => "Mary Fraser", :email => "mary.fraser@gmail.com", :password => "mango"},
            {:name => "Boris Reid", :email => "boris.reid@gmail.com", :password => "grape"},
            {:name => "Sarah Hemmings", :email => "sarah.hemmings@gmail.com", :password => "lemon"},
            {:name => "Trevor Dowd", :email => "trevor.dowd@gmail.com", :password => "lime", :usertype => "Student"}
            ]

userlist.each do |user|
    User.create!(user)
end





users = User.all

userCount = users.length

i = 0

x = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
y = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
Course.all.each do |course|
  
  course.notesheets.create!(:title => "Unit #{i}", :course_id => course.id, :user_id => users[i % userCount].id, :date_created => "10/17/19", :content => "#{x}")
  course.notesheets.create!(:title => "Unit #{i+1}", :content => "#{y}", :course_id => course.id, :user_id => users[(i + 1) % userCount].id, :date_created => "10/18/19")

    i += 1
end







