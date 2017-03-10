class CreateQuestionThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :question_themes do |t|
      t.string :title, :null=>false
      t.int :admin_id, :null=>false
      t.int :company_id, :null=>false
      t.datetime :created_at, :null=>false
      t.datetime :updated_at, :null=>false

      t.timestamps
    end
  end
end
