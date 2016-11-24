class CreatePubs < ActiveRecord::Migration[5.0]
  def change
    create_table :pubs do |t|
      t.string :name
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
