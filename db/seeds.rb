ciaran = User.create!(name: "Ciaran", email: "ciaran@fake.com", password: 'secret', password_confirmation: 'secret')
kay = User.create!(name: "Kay", email: "kay@fake.com", password: 'secret', password_confirmation: 'secret')
dan = User.create!(name: "Dan", email: "dan@fake.com", password: 'secret', password_confirmation: 'secret')
ed = User.create!(name: "Ed", email: "ed@fake.com", password: 'secret', password_confirmation: 'secret')
billie = User.create!(name: "Billie", email: "billie@fake.com", password: 'secret', password_confirmation: 'secret')

music = Category.create(name: "Music", description: "Anything to do with learning, playing, or exploring music")
financial = Category.create(name: "Financial", description: "Saving, investing, budgeting, and anything else financial")
programming = Category.create(name: "Programming", description: "Learn, love, code!")
health = Category.create(name: "Health & Fitness", description: "Improving health, fitness, wellbeing")
languages = Category.create(name: "Languages", description: "Learning a foreign language")
art_design = Category.create(name: "Art & Design", description: "All things productive and creative in the art and design world")
writing = Category.create(name: "Writing", description: "The written word, whether a novel or a blog")
education = Category.create(name: "Education", description: "Learning to better oneself")

c_goal1 = Goal.create(name: "Learn Piano", user_id: 1, description: "Working towards a piano grade to avoid forgetting how to play the thing", overall_goal: "Grade 6 Piano", due_date: Date.parse("31/03/2019"), start_date: Date.parse("01/08/2018"), daily_goal: "30 minutes practice", category: music)

k_goal1 = Goal.create(name: "Learn Rails", user_id: 2, description: "Ongoing project to learn the ins and outs of rails", overall_goal: "Rails Master", due_date: Date.parse('07/12/2018'), start_date: Date.parse("17/09/2018"), daily_goal: "Do 5 labs", category: programming)

c_goal2 = Goal.create(name: "Learn Javascript", user_id: 1, description: "Getting ready for mod 3", overall_goal: "JS mastery", due_date: Date.parse("07/12/2018"), start_date: Date.parse("01/10/2018"), daily_goal: "30 minutes javascript learning", category: programming)

c_goal3 = Goal.create(name: "Complete Rails project", user_id: 1, overall_goal: "Finish project", due_date: Date.parse("05/10/2018"), start_date: Date.parse("01/10/2018"), daily_goal: "Do lots of work on the project", category: programming)

k_goal2 = Goal.create(name: "Complete Rails project", user_id: 2, overall_goal: "Finish Project", due_date: Date.parse('05/10/2018'), start_date: Date.parse("01/10/2018"), daily_goal: "Do lots of work on the project", category: programming)

Goal.create(name: "Learn French", user_id: 5, overall_goal: "Fluency in French", due_date: Date.parse('31/12/2018'), start_date: Date.parse("01/09/2018"), daily_goal: "Un peu de travail", category: languages)

Comment.create(commenter_id: 1, goal_id: 2, content: "Fantastic job!")
Comment.create(commenter_id: 2, goal_id: 1, content: "Keep it up!")
Comment.create(commenter_id: 3, goal_id: 1, content: "You can do it!")
Comment.create(commenter_id: 4, goal_id: 5, content: "Great results - what a project!")
Comment.create(commenter_id: 3, goal_id: 6, content: "Bon chance!")
Comment.create(commenter_id: 3, goal_id: 3, content: "It'll be tough, but I believe in you")
Comment.create(commenter_id: 4, goal_id: 4, content: "I believe in you!")
Comment.create(commenter_id: 3, goal_id: 6, content: "Good progress!")
Comment.create(commenter_id: 5, goal_id: 1, content: "Almost there...")
Comment.create(commenter_id: 5, goal_id: 2, content: "Keep going!")
Comment.create(commenter_id: 3, goal_id: 3, content: "Wow!")

Boost.create(booster_id: 1, goal_id: 1, boost_type: "thumbs")
Boost.create(booster_id: 2, goal_id: 2, boost_type: "star")
Boost.create(booster_id: 3, goal_id: 3, boost_type: "star")
Boost.create(booster_id: 3, goal_id: 4, boost_type: "star")
Boost.create(booster_id: 4, goal_id: 5, boost_type: "thumbs")
Boost.create(booster_id: 4, goal_id: 6, boost_type: "thumbs")
Boost.create(booster_id: 1, goal_id: 2, boost_type: "thumbs")
Boost.create(booster_id: 2, goal_id: 2, boost_type: "heart")
Boost.create(booster_id: 3, goal_id: 1, boost_type: "heart")
Boost.create(booster_id: 2, goal_id: 6, boost_type: "heart")
Boost.create(booster_id: 4, goal_id: 5, boost_type: "thumbs")
Boost.create(booster_id: 4, goal_id: 4, boost_type: "star")
Boost.create(booster_id: 5, goal_id: 5, boost_type: "star")
Boost.create(booster_id: 3, goal_id: 2, boost_type: "thumbs")
Boost.create(booster_id: 4, goal_id: 1, boost_type: "thumbs")


DailyGoalMet.create(goal_id: 1, date: Date.parse('14/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('15/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('16/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('17/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('18/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('19/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('20/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('21/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('22/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('23/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('24/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('25/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('26/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('27/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('28/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('29/09/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('01/10/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('02/10/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('03/10/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('05/10/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('06/10/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('07/10/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('09/10/2018'))
DailyGoalMet.create(goal_id: 1, date: Date.parse('10/10/2018'))

DailyGoalMet.create(goal_id: 2, date: Date.parse('26/09/2018'))
DailyGoalMet.create(goal_id: 2, date: Date.parse('27/09/2018'))
DailyGoalMet.create(goal_id: 2, date: Date.parse('28/09/2018'))
DailyGoalMet.create(goal_id: 2, date: Date.parse('29/09/2018'))
DailyGoalMet.create(goal_id: 2, date: Date.parse('30/09/2018'))
DailyGoalMet.create(goal_id: 2, date: Date.parse('01/10/2018'))
DailyGoalMet.create(goal_id: 2, date: Date.parse('02/10/2018'))
DailyGoalMet.create(goal_id: 2, date: Date.parse('03/10/2018'))
DailyGoalMet.create(goal_id: 2, date: Date.parse('04/10/2018'))

DailyGoalMet.create(goal_id: 3, date: Date.parse('01/10/2018'))

DailyGoalMet.create(goal_id: 4, date: Date.parse('01/10/2018'))
DailyGoalMet.create(goal_id: 4, date: Date.parse('02/10/2018'))
DailyGoalMet.create(goal_id: 4, date: Date.parse('03/10/2018'))
DailyGoalMet.create(goal_id: 4, date: Date.parse('04/10/2018'))

DailyGoalMet.create(goal_id: 5, date: Date.parse('01/10/2018'))
DailyGoalMet.create(goal_id: 5, date: Date.parse('02/10/2018'))
DailyGoalMet.create(goal_id: 5, date: Date.parse('03/10/2018'))
DailyGoalMet.create(goal_id: 5, date: Date.parse('04/10/2018'))

DailyGoalMet.create(goal_id: 6, date: Date.parse('24/09/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('25/09/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('26/09/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('27/09/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('28/09/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('29/09/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('30/09/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('01/10/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('02/10/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('03/10/2018'))
DailyGoalMet.create(goal_id: 6, date: Date.parse('04/10/2018'))
