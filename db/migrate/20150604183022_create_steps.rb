class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :amount
      t.datetime :steps_on

      t.timestamps null: false
    end
  end
end
