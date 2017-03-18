class QuestionChoicesController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @question_choice = @question.question_choices.build(params.require(:question_choice).permit(:choice))
    @question_choice.save

    redirect_to question_theme_questions_path(params[:question_theme_id])
  end
end
