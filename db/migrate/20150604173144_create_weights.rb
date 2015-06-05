class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :amount
      t.date :weighed_on

      t.timestamps null: false
    end
  end
end
