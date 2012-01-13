class RevertBack < ActiveRecord::Migration
  def up
    drop_table :names
    drop_table :locations
    remove_column :items, :name_id
    remove_column :items, :location_id
    add_column :items, :name, :string
    add_column :items, :location, :string
  end

  def down
  end
end
