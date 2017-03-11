class QuestionThemesController < ApplicationController
  def index
    @question_themes = QuestionTheme.all  
  end
end
