class Info < ApplicationRecord
  belongs_to :user
  belongs_to :bodycolor
  attr_encrypted :nickname, key: 'This is a key that is 256 bits!!'
end
