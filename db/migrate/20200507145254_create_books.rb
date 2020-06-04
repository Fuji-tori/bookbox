class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books, id: :integer do |t|
      t.string     :book_name,    null: false, index: true
      t.string     :author,      null: false
      t.string     :publication, null: false
      t.integer    :price,       null: false
      t.text       :synopsis,    null: false
      t.string     :image,       null: false
      t.text       :review,      null: false
      t.integer    :book_genre,  null: false, foreign_key: true
      t.integer    :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
