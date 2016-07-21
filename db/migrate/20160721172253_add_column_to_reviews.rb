class AddColumnToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :reviewable_id, :integer
    add_column :reviews, :reviewable_type, :string
  end
end
