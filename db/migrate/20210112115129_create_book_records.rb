class CreateBookRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :book_records do |t|
    	t.string "title"
    	t.string "author"
    	t.integer "price"


      t.timestamps
    end
  end
end
