class CreateExerciseTasks < ActiveRecord::Migration
  def change
    create_table :exercise_tasks do |t|
      t.integer :exercise_type_id
      t.integer :cals_burned
      t.date :exercise_on

      t.timestamps null: false
    end
  end
end
