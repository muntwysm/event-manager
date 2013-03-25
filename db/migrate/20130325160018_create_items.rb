class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :unit
      t.references :category

      t.timestamps
    end
    add_index :items, :category_id
  end
end
