class AddColumnToImages < ActiveRecord::Migration
  def change
    add_column :images, :imagable_id, :integer
    add_column :images, :imagable_type, :string
  end
end
