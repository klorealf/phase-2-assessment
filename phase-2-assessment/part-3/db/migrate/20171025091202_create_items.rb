class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :condition, null: false
      t.text :description, null: false
      t.integer :user_id, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null:false

      t.timestamps null: false
    end
  end
end
