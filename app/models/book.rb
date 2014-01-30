class Book < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image_url, BookImageUploader
end
