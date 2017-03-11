class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :type
      t.datetime :created_at
      t.datetime :updated_at
      t.references :question_theme, foreign_key: true

      t.timestamps
    end
  end
end
