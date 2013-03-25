class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :qty
      t.references :event
      t.references :item
      t.string :contributor
      t.string :authtoken
      t.boolean :req

      t.timestamps
    end
    add_index :contributions, :event_id
    add_index :contributions, :item_id
  end
end
