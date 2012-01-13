class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title

      t.timestamps
      
      add_column :items, :location_id, :integer
      remove_column :items, :location
    end
  end
end
