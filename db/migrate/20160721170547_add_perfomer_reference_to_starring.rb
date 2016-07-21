class AddPerfomerReferenceToStarring < ActiveRecord::Migration
  def change
    add_reference :starrings, :perfomer, index: true, foreign_key: true
  end
end
