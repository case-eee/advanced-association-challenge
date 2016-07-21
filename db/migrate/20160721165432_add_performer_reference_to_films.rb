class AddPerformerReferenceToFilms < ActiveRecord::Migration
  def change
    def change
      add_reference :film, :performers, index: true, foreign_key: true
    end
  end
end
