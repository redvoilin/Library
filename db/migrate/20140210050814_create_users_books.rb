class CreateUsersBooks < ActiveRecord::Migration
  def change
    create_table :users_books do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :status
      t.date :end_time

      t.timestamps
    end
  end
end
