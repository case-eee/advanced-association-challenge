class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :name
      t.text :biography
      t.string :height
      t.date :birthday

      t.timestamps null: false
    end
  end
end
