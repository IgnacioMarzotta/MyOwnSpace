class Note < ApplicationRecord
  belongs_to :user
  belongs_to :bodycolor
  has_rich_text :content
end
