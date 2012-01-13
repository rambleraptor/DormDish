class Item < ActiveRecord::Base
  has_attached_file :picture
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']
  validates_attachment_size :picture, :less_than => 7.megabytes
  validates_attachment_presence :picture
  

end
# == Schema Information
#
# Table name: items
#
#  id                   :integer         not null, primary key
#  votes                :integer
#  created_at           :datetime
#  updated_at           :datetime
#  picture_file_name    :string(255)
#  picture_content_type :string(255)
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#  name_id              :integer
#  location_id          :integer
#

