class Medium < ActiveRecord::Base
  belongs_to :item
  mount_uploader :file_name, MediaUploader
end
