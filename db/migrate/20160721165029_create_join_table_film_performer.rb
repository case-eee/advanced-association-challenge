class CreateJoinTableFilmPerformer < ActiveRecord::Migration
  def change
    create_join_table :films, :performers do |t|
      t.index [:film_id, :performer_id]
      t.index [:performer_id, :film_id]
    end
  end
end
