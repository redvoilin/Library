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

  def self.borrow_book params
    user = User.find_by_username(params[:user])
    if user
      borrow_record = BorrowRecord.new
      borrow_record.user_id = user.id
      borrow_record.book_id = params[:book]
      borrow_record.status = 2
      borrow_record.return_date = Date.today + params[:days].to_i
      borrow_record.info = params[:info]
      if borrow_record.save
        "success"
      else
        "failed"
      end
    else
      "user not found"
    end
  end
end
