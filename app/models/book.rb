class Book < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image_url, BookImageUploader
  paginates_per 15

  def self.get_books page,category
  	if category == 0 || !category 
  	  Book.page(page).order("average desc")
  	else
  	  Book.where("category_id = ?",category).page(page).order("average desc")
  	end
  end
end
