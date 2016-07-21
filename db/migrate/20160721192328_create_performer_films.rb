class CreatePerformerFilms < ActiveRecord::Migration
  def change
    create_table :performer_films do |t|
      t.integer :performer_id
      t.integer :film_id
    end
  end
end
