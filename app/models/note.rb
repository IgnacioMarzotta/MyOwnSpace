class Note < ApplicationRecord
  belongs_to :shared_note
  belongs_to :bodycolor
  belongs_to :user
end
