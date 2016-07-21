class RemoveFilmsReferenceFromPerformers < ActiveRecord::Migration
  def change
    remove_reference :performers, :films, index: true, foreign_key: true
  end
end
