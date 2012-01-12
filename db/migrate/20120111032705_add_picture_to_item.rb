class AddPictureToItem < ActiveRecord::Migration
  def change
    change_table :items do |t|
          t.has_attached_file :picture
  end
end
end
