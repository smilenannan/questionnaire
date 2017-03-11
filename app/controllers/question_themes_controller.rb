class QuestionThemesController < ApplicationController
  def index
    @question_themes = QuestionTheme.all  
  end

  def destroy
    @question_theme = QuestionTheme.find(params[:id])
    @question_theme.destroy
    redirect_to question_themes_path
  end
end
