class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string     :book_name,   null: false, index: true
      t.string     :author,      null: false
      t.string     :publication, null: false
      t.integer    :price,       null: false
      t.text       :synopsis,    null: false
      t.string     :image,       null: false
      t.text       :review,      null: false
      t.timestamps
    end
  end
end
