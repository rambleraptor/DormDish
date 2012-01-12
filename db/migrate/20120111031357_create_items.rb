class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :votes
      t.string :location

      t.timestamps
    end
  end
end
