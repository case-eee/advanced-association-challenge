class CreatePerformerFilmsTable < ActiveRecord::Migration
  def change
    create_table :performer_films do |t|
      t.references :film, index: true, foreign_key: true
      t.references :performer, index: true, foreign_key: true
    end
  end
end
