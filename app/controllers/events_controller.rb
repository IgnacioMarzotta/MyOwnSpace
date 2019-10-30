class EventsController < InheritedResources::Base
  before_action :set_event, only: [:show, :edit, :update]
  before_action :authenticate_user!
  
  def index
    @events = Event.where(user_id: current_user)
    render json: @events.to_json
  end

  def show; end

  def edit; end

  def create
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to calendar_path, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :start)
  end
end
