User.create(username: "Lyman", email: "lymanwong@gmail.com", password: "123")

10.times do
  User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "boom")

  array = [1,2,3]
  workoutName = ["Dumbell", "Jumping Jacks", "Sprints", "Curls"]
  bodyPart = ["Arms", "Legs", "Back", "Neck", "Chest", "Abs"]
  Workout.create(user_id: array.sample, name: workoutName.sample, body_part: bodyPart.sample, weight: rand(5..50), set: rand(1..5), rep: rand(1..5))
end
