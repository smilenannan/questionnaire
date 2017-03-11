class CreateQuestionThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :question_themes do |t|
      t.string :title, :null=>false
      t.integer :admin_id, :null=>false
      t.integer :company_id, :null=>false
      t.datetime :created_at, :null=>false
      t.datetime :updated_at, :null=>false

      t.timestamps
    end
  end
end
