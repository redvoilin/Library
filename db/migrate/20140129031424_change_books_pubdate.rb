class ChangeBooksPubdate < ActiveRecord::Migration
  def change
  	reversible do |dir|
      change_table :books do |t|
        dir.up   { t.change :pubdate, :string }
        dir.down { t.change :price, :date }
      end
    end
  end
end
