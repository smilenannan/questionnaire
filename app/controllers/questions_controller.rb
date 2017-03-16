class QuestionsController < ApplicationController
  def index
    p 'debug!!!!!!!!!'
    p params
    @question_theme = QuestionTheme.find(params[:question_theme_id])
    @question = Question.new(:question_theme_id=>params[:question_theme_id])
  end

  def create
    @question_theme = QuestionTheme.find(params[:question_theme_id])
    @question = @question_theme.questions.build(params.require(:question).permit(:title, :category))
    @question.save

    redirect_to question_theme_questions_path(params[:question_theme_id])
  end
end
