class QuestionThemesController < ApplicationController
  def index
    question_themes = QuestionThemes.all  
  end
end
