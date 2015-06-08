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

random_number = (100..999).to_a

types.each_with_index do |type, count|
  exercise_type = ExerciseType.create!(type_is: type)

ExerciseTask.create!(
  exercise_type_id: exercise_type.id,
  cals_burned: random_number.sample,
  exercise_on: Date.today - (count - 1)
  )
end

20.times do
  Cal.create!(
    amount: random_number.sample,
    description: foods.sample,
    cals_on: Date.today-(0..4).to_a.sample
  )
end

4.times do |count|
  Step.create!(
    amount: random_number.sample,
    steps_on: Date.today - count
  )
end

4.times do |count|
  Weight.create!(
    amount: (100..300).to_a.sample,
    weighed_on: Date.today - count
  )
end
