class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.text :details
      t.references :location

      t.timestamps
    end
    add_index :events, :location_id
  end
end
