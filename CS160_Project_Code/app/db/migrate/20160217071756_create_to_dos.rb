class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :task
      t.text :description
      t.int :time

      t.timestamps null: false
    end
  end
end
