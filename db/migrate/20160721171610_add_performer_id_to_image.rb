class AddPerformerIdToImage < ActiveRecord::Migration
  def change
    add_column :images, :performer_id, :integer
  end
end
