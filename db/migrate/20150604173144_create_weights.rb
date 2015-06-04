class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :amount
      t.datetime :weighed_on

      t.timestamps null: false
    end
  end
end
