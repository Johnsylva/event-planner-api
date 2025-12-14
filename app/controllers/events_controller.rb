class EventsController < ApplicationController
  def index
    @events = Event.all
    render :index
  end

  def show
    @event = Event.find_by(id: params[:id])
    render :show
  end
end
