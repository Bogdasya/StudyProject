class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.string :author
      t.string :content
      t.timestamps null: false
    end
  end
end
