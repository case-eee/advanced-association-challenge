class RemoveFilmFromPerformers < ActiveRecord::Migration
  def change
    remove_column :performers, :film_id
  end
end
