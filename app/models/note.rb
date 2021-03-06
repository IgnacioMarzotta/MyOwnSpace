class Note < ApplicationRecord
  belongs_to :user
  belongs_to :bodycolor
  has_rich_text :content
  has_many_attached :images
  validates :title, length: {maximum: 64}
  validates :description, length: {maximum: 128}
  validates :content, length: {maximum: 10000}
end
