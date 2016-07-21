class CreateFilmReviews < ActiveRecord::Migration
  def change
    create_table :film_reviews do |t|

      t.timestamps null: false
    end
  end
end
