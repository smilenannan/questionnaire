class RenameTypeColumnToQuestions < ActiveRecord::Migration[5.0]
  def change
    rename_column :questions, :type, :category
  end
end
