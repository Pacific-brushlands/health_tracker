class CreateExerciseTypes < ActiveRecord::Migration
  def change
    create_table :exercise_types do |t|
      t.string :type_is

      t.timestamps null: false
    end
  end
end
