class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.boolean :completed, default: false
      t.date :deadline, default: nil

      t.timestamps
    end
  end
end
