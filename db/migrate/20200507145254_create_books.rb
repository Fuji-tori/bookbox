class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string     :bookname,    null: false
      t.string     :author,      null: false
      t.string     :publication, null: false
      t.integer    :price,       null: false
      t.string     :text,        null: false
      t.string     :image,       null: false
      t.text       :review,      null: false
      t.string     :genre,       null: false, foreign_key: true
      t.references :user,        null:false, foreign_key: true
      t.timestamps
    end
  end
end
