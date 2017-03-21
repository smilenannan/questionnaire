class QuestionsController < ApplicationController
  def index
    @question_theme = QuestionTheme.find(params[:question_theme_id])
  end

  def create
    @question_theme = QuestionTheme.find(params[:question_theme_id])
    @question = Question.new(params.require(:question).permit(:title, :category))
    @question.question_theme_id = @question_theme.id
    if @question.save
      redirect_to :action=>:index
    else
      render :index
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(params.require(:question).permit(:title))
      redirect_to :action=>:index
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
