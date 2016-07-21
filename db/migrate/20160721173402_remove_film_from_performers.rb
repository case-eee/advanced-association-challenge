class RemoveFilmFromPerformers < ActiveRecord::Migration
  def change
    remove_reference :performers, :film, index: true, foreign_key: true
  end
end
