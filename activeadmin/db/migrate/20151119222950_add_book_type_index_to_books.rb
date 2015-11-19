class AddBookTypeIndexToBooks < ActiveRecord::Migration
  def change
    add_column :books, :book_type_id, :number
  end
end
