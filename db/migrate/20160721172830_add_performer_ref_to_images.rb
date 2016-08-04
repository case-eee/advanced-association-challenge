class AddPerformerRefToImages < ActiveRecord::Migration
  def change
    add_reference :images, :performer, index: true, foreign_key: true
  end
end
