class AddFilmAndPerformerToStarredIn < ActiveRecord::Migration
  def change
    add_reference :starred_ins, :film, index: true, foreign_key: true
    add_reference :starred_ins, :performer, index: true, foreign_key: true
  end
end
