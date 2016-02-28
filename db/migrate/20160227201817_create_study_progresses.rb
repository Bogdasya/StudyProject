class CreateStudyProgresses < ActiveRecord::Migration
  def change
    create_table :study_progresses do |t|
      t.string :user
      t.string :date
      t.string :content
      t.timestamps null: false
    end
  end
end
