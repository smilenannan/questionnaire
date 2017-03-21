class QuestionChoicesController < ApplicationController
  def create
    #@question = Question.find(params[:question_id])
    #@question_choice = QuestionChoice.new(params.require(:question_choice).permit(:choice))
    #@question_choice.question_id = 
    question = Question.find(params[:question_id])
    @question_choice = question.question_choices.build(params.require(:question_choice).permit(:choice))
    if @question_choice.save
      redirect_to question_theme_questions_path(params[:question_theme_id])
    else
      render question_theme_questions_path(params[:question_theme_id])
    end
    #redirect_to question_theme_questions_path(params[:question_theme_id])
  end

  def edit
    @question_choice = QuestionChoice.find(params[:id])
  end

  def update
    @question_choice = QuestionChoice.find(params[:id])
    if @question_choice.update(params.require(:question_choice).permit(:choice))
      redirect_to question_theme_questions_path(params[:question_theme_id])
    else
      render :edit
    end
  end

  def destroy
    @question_choice = QuestionChoice.find(params[:id])
    @question_choice.destroy
    
    redirect_to question_theme_questions_path(params[:question_theme_id])
  end
end
