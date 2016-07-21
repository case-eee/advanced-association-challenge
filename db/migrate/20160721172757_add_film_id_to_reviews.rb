class AddFilmIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :film_id, :integer
  end
end
