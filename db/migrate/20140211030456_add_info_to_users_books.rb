class AddInfoToUsersBooks < ActiveRecord::Migration
  def change
    add_column :users_books, :info, :text
  end
end
