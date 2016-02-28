class AddindThemeToReading < ActiveRecord::Migration
  def change
    add_column :readings, :theme, :string
  end
end
