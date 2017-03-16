class QuestionThemesController < ApplicationController
  def index
    @question_themes = QuestionTheme.all  
  end

  def destroy
    @question_theme = QuestionTheme.find(params[:id])
    @question_theme.destroy

    redirect_to question_themes_path
  end

  def new
    @question_theme = QuestionTheme.new
  end
  
  def create
    # this will be changed after connected to admin
    default = 1
    @question_theme = QuestionTheme.new(params.require(:question_theme).permit(:title))
    @question_theme.admin_id = default
    question_theme_id = @question_theme.tap(&:save).id

    redirect_to question_theme_questions_path(question_theme_id)
  end

  def edit
    @question_theme = QuestionTheme.find(params[:id])
  end

  def update
    @question_theme = QuestionTheme.find(params[:id])
    if @question_theme.update(params.require(:question_theme).permit(:title))
      redirect_to question_theme_questions_path(@question_theme.id)
    else
      render :edit
    end
  end
end
