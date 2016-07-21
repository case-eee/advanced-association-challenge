class CreateStarrings < ActiveRecord::Migration
  def change
    create_table :starrings do |t|

      t.timestamps null: false
    end
  end
end
