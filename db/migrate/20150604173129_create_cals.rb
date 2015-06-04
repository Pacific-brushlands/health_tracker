class CreateCals < ActiveRecord::Migration
  def change
    create_table :cals do |t|
      t.integer :amount
      t.string :description
      t.datetime :cals_on

      t.timestamps null: false
    end
  end
end
