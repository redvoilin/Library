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
      borrow_record.status = 1
      borrow_record.return_date = Date.today + params[:days].to_i
      borrow_record.info = params[:info]

      book = self.find(params[:book])
      book.number -= 1

      self.transaction do
        borrow_savestate = borrow_record.save!
        book_savestate = book.save!
      end

      if borrow_savestate and book_savestate
        "success"
      else
        "failed"
      end
    else
      "user not found"
    end
  end

  def self.get_borrowrecords params
    user = User.find_by_username(params[:user])
    if user
      user.borrow_records.where("status != ?",3)
    else

    end
  end

  def return_book borrowrecord_id
    record = BorrowRecord.find(borrowrecord_id)
    record.status = 3
    if record.save
      "success"
    else
      "failed"
    end
  end
end
