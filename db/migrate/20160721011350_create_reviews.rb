class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :author_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
