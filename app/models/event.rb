class Event < ApplicationRecord
    belongs_to :user

    #This method defines if an event is editable or not depending on if it happened or not
    #def editable?
    #    if (Date.today < start) true : false
    #end
end
