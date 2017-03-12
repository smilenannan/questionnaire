class QuestionsController < ApplicationController
  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to new_question_theme_path
  end

  private

    def question_params
      params.require(:question).permit(:type)
    end
end
