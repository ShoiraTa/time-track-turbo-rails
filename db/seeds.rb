# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Activity.create(user: User.first, title: "Play", style:' hsl(195, 74%, 62%)' )
# Activity.create(user: User.first, title: "Study",style:'hsl(348, 100%, 68%)' )
# Activity.create(user: User.first, title: "Self Care", style:'hsl(43, 84%, 65%)' )
# Activity.create(user: User.first, title: "Social", style:'hsl(264, 64%, 52%)' )
# Activity.create(user: User.first, title: "Exercise",style:' hsl(145, 58%, 55%)' )
# Activity.create(user: User.first, title: "Work",style:'hsl(15, 100%, 70%)' )

# Today
Timelog.create(user: User.first, minutes: "70", activity: Activity.where('title ILIKE ?', "Work")[0]) 
Timelog.create(user: User.first, minutes: "80", activity: Activity.where('title ILIKE ?', "Play")[0]) 
Timelog.create(user: User.first, minutes: "70", activity: Activity.where('title ILIKE ?', "Self Care")[0]) 
Timelog.create(user: User.first, minutes: "90", activity: Activity.where('title ILIKE ?', "Exercise")[0]) 
Timelog.create(user: User.first, minutes: "90", activity: Activity.where('title ILIKE ?', "Exercise")[0]) 
Timelog.create(user: User.first, minutes: "50", activity: Activity.where('title ILIKE ?', "Social")[0]) 

# Yesterday
Timelog.create(user: User.first, minutes: "40", created_at:"2022-06-20", activity: Activity.where('title ILIKE ?', "Social")[0]) 
Timelog.create(user: User.first, minutes: "60", created_at:"2022-06-20", activity: Activity.where('title ILIKE ?', "Work")[0]) 
Timelog.create(user: User.first, minutes: "70",created_at:"2022-06-20", activity: Activity.where('title ILIKE ?', "Play")[0]) 
Timelog.create(user: User.first, minutes: "60", created_at:"2022-06-20",activity: Activity.where('title ILIKE ?', "Self Care")[0]) 
Timelog.create(user: User.first, minutes: "80",created_at:"2022-06-20", activity: Activity.where('title ILIKE ?', "Exercise")[0]) 
Timelog.create(user: User.first, minutes: "80",created_at:"2022-06-20", activity: Activity.where('title ILIKE ?', "Exercise")[0]) 

# 2Weeks ago
Timelog.create(user: User.first, minutes: "30", created_at:"2022-06-9", activity: Activity.where('title ILIKE ?', "Social")[0]) 
Timelog.create(user: User.first, minutes: "50", created_at:"2022-06-9", activity: Activity.where('title ILIKE ?', "Work")[0]) 
Timelog.create(user: User.first, minutes: "60",created_at:"2022-06-9", activity: Activity.where('title ILIKE ?', "Play")[0]) 
Timelog.create(user: User.first, minutes: "50", created_at:"2022-06-9",activity: Activity.where('title ILIKE ?', "Self Care")[0]) 
Timelog.create(user: User.first, minutes: "70",created_at:"2022-06-9", activity: Activity.where('title ILIKE ?', "Exercise")[0]) 
Timelog.create(user: User.first, minutes: "70",created_at:"2022-06-9", activity: Activity.where('title ILIKE ?', "Exercise")[0]) 