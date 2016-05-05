class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :Goal
      t.text :Description
      t.date :Date
      t.date :DueDate
      t.user_id :user_id

      t.timestamps null: false
    end
  end
end
