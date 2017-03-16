class QuestionsController < ApplicationController
  def index
    @question_theme = QuestionTheme.find(params[:question_theme_id])
  end
end
