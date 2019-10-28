class EventsController < InheritedResources::Base
  before_action :authenticate_user!
  
  def index
    @events = Event.where(user_id: current_user)
    render json: @events.to_json
  end
    def event_params
      params.require(:event).permit(:title, :start)
    end
end
