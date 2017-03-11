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
    # default value must be changed after connected to admin_home
    default = 1
    @question_theme = QuestionTheme.new({admin_id: default})
  end
end
