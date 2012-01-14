class NameLocationIndex < ActiveRecord::Migration
  def up
    add_index :items, :name
    add_index :items, :location
  end

  def down
    remove_index :items, :name
    remove_index :items, :location
  end
end
