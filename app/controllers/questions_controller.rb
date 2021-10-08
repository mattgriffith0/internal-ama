class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :destroy]

  def new
    @question = Question.new
  end

  def create

  end

  def show
  end

  def destroy
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :anonymous)
  end
end