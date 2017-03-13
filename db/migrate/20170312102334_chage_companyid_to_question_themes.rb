class ChageCompanyidToQuestionThemes < ActiveRecord::Migration[5.0]
  def change
    change_column_null :question_themes, :company_id, true
  end
end
