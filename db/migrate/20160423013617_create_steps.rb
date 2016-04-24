class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :requirement
      t.integer :completionTime

      t.timestamps null: false
    end
  end
end
