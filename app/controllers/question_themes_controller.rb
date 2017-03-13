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
    # initialize
    #session[:question] = nil
    if session[:question].nil?
      session[:question] = []
    end

    # default value must be changed after connected to admin_home
    default = 1
    if session[:question_theme_title].nil? then
      @question_theme = QuestionTheme.new({admin_id: default})
    else
      @question_theme = QuestionTheme.new({admin_id: default, title: session[:question_theme_title]})
    end

    if !session[:question].empty? then
      session[:question].each do |param|
        @question_theme.questions.build(title: param["question_title"], category: param["category"])
      end
    end
  end
  
  def create
    # save data on session
    session[:question_theme_title] = params[:question_theme_title]

    if params[:add]
      if params[:question_title].present?
        session[:question].push(params.permit(:question_title, :category))
      end

    elsif params[:create]
      # default value must be changed after connected to admin_home
      default = 1
      @question_theme = QuestionTheme.new(title: session[:question_theme_title])
      @question_theme.admin_id = default
      question_theme_id =  @question_theme.tap(&:save).id

      session[:question].each do |param|
        @question = Question.new(title: param["question_title"], category: param["category"])
        @question.question_theme_id = question_theme_id
        @question.save
        
        session[:question] = nil
        session[:question_theme_title] = nil
      end
    end

    redirect_to new_question_theme_path
  end

end
