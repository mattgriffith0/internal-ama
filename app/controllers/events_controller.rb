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
  end

  def destroy
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end