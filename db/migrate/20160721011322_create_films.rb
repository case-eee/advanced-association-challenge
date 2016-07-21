class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.text :description
      t.integer :year
      t.integer :length
      t.string :rating
      t.integer :category_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
