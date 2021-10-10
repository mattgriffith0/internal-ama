class QuestionsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def new
    @question = Question.new
  end

  def create
    @event = Event.find(params[:event_id])
    @question = @event.questions.create(question_params)
    @question.user = current_user
    if @question.save
      redirect_to @event, notice: "Question submitted successfully!"
    else
      render :new
    end
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to @event, notice: "Question updated successfully!"
    else
      render :edit
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :anonymous)
  end
end