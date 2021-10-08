class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.create(event_params)
    if @event.save
      redirect_to @event, notice: "Event created successfully!"
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :date)
  end
end