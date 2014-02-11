class AddAdscriptionToBooks < ActiveRecord::Migration
  def change
    add_column :books, :adscription, :boolean
  end
end
