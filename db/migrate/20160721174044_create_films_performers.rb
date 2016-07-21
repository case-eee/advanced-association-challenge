class CreateFilmsPerformers < ActiveRecord::Migration
  def change
    create_table :films_performers do |t|
      t.references :films, index: true, foreign_key: true
      t.references :performers, index: true, foreign_key: true
    end
  end
end
