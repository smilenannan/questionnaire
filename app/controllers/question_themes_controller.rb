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
    p params
    # this will be changed after connected to admin
    default = 1
    @question_theme = QuestionTheme.new(params.require(:question_theme).permit(:title))
    @question_theme.admin_id = default
    @question_theme.save
  end
end
