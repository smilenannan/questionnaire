class QuestionsController < ApplicationController
  def index
    @question_theme = QuestionTheme.find(params[:question_theme_id])
    @question = Question.new(:question_theme_id=>params[:question_theme_id])
    @question_choice = QuestionChoice.new
  end

  def create
    @question_theme = QuestionTheme.find(params[:question_theme_id])
    @question = @question_theme.questions.build(params.require(:question).permit(:title, :category))
    @question.save

    redirect_to question_theme_questions_path(params[:question_theme_id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(params.require(:question).permit(:title))
      redirect_to question_theme_questions_path(params[:question_theme_id])
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to question_theme_questions_path(params[:question_theme_id])
  end
end
