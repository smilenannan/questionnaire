class CreateQuestionChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :question_choices do |t|
      t.text :choice
      t.datetime :created_at
      t.datetime :updated_at
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
