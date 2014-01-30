class AddSomeColunmsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :average, :decimal
    add_column :books, :pubdate, :date
    add_column :books, :catalog, :text
    add_column :books, :pages, :integer
    add_column :books, :author_intro, :text
    add_column :books, :summary, :text
  end
end
