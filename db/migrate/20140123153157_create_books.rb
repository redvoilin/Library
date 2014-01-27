class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :country
      t.string :translator
      t.string :publisher
      t.string :ISBN
      t.integer :number
      t.decimal :price
      t.date :rec_date
      t.text :info

      t.timestamps
    end
  end
end
