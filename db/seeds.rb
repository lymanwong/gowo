array = [1,2,3,4,5,6,7,8,9,10,11]
workoutName = ["Dumbell", "Jumping Jacks", "Sprints", "Curls"]
bodyPart = ["Arms", "Legs", "Back", "Neck", "Chest", "Abs"]
title = ["title 1","title 2","title 3","title 4","title 5","title 6","title 7","title 8","title 9","title 10","title 11","title 12","title 13","title 14","title 15"]
comment = ["comment 1","comment 2","comment 3","comment 4","comment 5","comment 6","comment 7","comment 8","comment 9","comment 10","comment 11","comment 12","comment 13","comment 14","comment 15"]
User.create(username: "Lyman", email: "lymanwong@gmail.com", password: "123")

20.times do
  User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "boom")

  Workout.create(user_id: array.sample, name: workoutName.sample, body_part: bodyPart.sample, weight: rand(5..50), set: rand(1..5), rep: rand(1..5), date:"2015-01-29")

  Comment.create(title: title.sample, comment: comment.sample, user_id: array.sample, workout_id: array.sample, date:"2015-01-29")
end
