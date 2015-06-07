# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
types = ["cardio", "plyo", "weight-training", "soccer"]
foods = ["Apple Pie", "Sweet & Sour Chicken", "Breakfast Sandwich", "Tuna Casserole",
    "Bagels", "Salmon", "Sweet Potato Pie", "Hot Dog", "Beef & Potato W/ Cheese Soup",
    "Pop Tarts", "Cheddar Biscuits", "Steak", "Brownies", "Hash Browns", "Bacon",
    "Pear", "Green Beans", "Mac & Cheese", "Fried Chicken", "Grapes"]

random_number = (100..999).to_a.sample

count = 0
4.times do
  ExerciseType.create!(type_is: types[count])
  count += 1
end

count = 0
4.times do
  ExerciseTask.create!(
    exercise_type_id: count,
    cals_burned: random_number,
    exercise_on: Date.today-count
    )
  count += 1
end

20.times do
  Cal.create!(
    amount: random_number,
    description: foods.sample,
    cals_on: Date.today-(0..4).to_a.sample
  )
end

count = 0
4.times do
  Step.create!(
    amount: random_number,
    steps_on: Date.today-count
  )
  count += 1
end

count = 0
4.times do
  Weight.create!(
    amount: (100..300).to_a.sample,
    weighed_on: Date.today-count
  )
  count += 1
end
