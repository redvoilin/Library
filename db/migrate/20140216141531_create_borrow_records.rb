class CreateBorrowRecords < ActiveRecord::Migration
  def change
    create_table :borrow_records do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :status
      t.date :return_date
      t.text :info

      t.timestamps
    end
  end
end
