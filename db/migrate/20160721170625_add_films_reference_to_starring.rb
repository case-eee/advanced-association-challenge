class AddFilmsReferenceToStarring < ActiveRecord::Migration
  def change
    add_reference :starrings, :film, index: true, foreign_key: true
  end
end
