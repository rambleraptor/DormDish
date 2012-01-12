class Item < ActiveRecord::Base
  has_attached_file :picture
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']
  validates_attachment_size :picture, :less_than => 7.megabytes
  validates_attachment_presence :picture
  

end
