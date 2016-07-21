class AddFilmReferenceToPerformers < ActiveRecord::Migration
  def change
    add_reference :performers, :film, index: true, foreign_key: true
  end
end
