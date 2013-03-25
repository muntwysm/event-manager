class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.integer :qty
      t.references :event
      t.references :item

      t.timestamps
    end
    add_index :requirements, :event_id
    add_index :requirements, :item_id
  end
end
