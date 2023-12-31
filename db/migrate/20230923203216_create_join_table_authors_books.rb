class CreateJoinTableAuthorsBooks < ActiveRecord::Migration[7.0]
  def change
    create_join_table :authors, :books do |t|
      t.index [:author_id, :book_id], unique: true
      # t.index [:book_id, :author_id], unique: true
    end
  end
end
