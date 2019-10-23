class Info < ApplicationRecord
  belongs_to :user
  belongs_to :bodycolor
  attr_encrypted :nickname, key: :nickname_encryption_key, mode: :per_attribute_iv
  attr_encrypted :email, key: :email_encryption_key, mode: :per_attribute_iv
  attr_encrypted :password, key: :password_encryption_key, mode: :per_attribute_iv
  attr_encrypted :content, key: :content_encryption_key, mode: :per_attribute_iv

  def nickname_encryption_key
    "\xE0\xCFit`} ,\\Z\xA1\xB7#\xFC\xEEqW\x17z\x82\x05\x9B.6\a\xAE\x97\xF0\xCAVn\xA6"
  end

  def email_encryption_key
    "Q\xD24\x9B\b\xA1\x9AZ\xB4,\xE4\xE0\xBA\xBC\xA3\x0F\x9C\xA3\xF7\xB7\xC4\xAC\"(\xE4\\Z\xAE&I\x14S"
  end

  def password_encryption_key
    "\v\x16\xEA*R\xF4\t\xFF\x82\xC5A\xEE\x126}b\xD9(\xEEL\xEA\xE9\xD9y\xBEG\xEC>t\x86\x95\xDF"
  end

  def content_encryption_key
    "\xA3%\x8APl\xD6\xBD&s\v\xBC&\xD79\xBC*\xB3O\x17\r\xD6@\xEC\xCC\xD6G]\xD2\xB6\xB5\x85H"
  end
end
