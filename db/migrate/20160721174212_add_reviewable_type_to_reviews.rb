class AddReviewableTypeToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :reviewable_type, :string
  end
end
