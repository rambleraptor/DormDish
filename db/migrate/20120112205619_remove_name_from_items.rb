class RemoveNameFromItems < ActiveRecord::Migration
  def up
    remove_column :items, :name
  end

  def down
  end
end
