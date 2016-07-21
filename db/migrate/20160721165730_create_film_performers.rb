class CreateFilmPerformers < ActiveRecord::Migration
  def change
    create_table :film_performers do |t|
      t.integer :film_id
      t.integer :performer_id
    end
  end
end
