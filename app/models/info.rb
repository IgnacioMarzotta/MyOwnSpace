class Info < ApplicationRecord
  belongs_to :user
  belongs_to :bodycolor
  attr_encrypted :nickname, key: :nickname_encryption_key, mode: :per_attribute_iv
  attr_encrypted :email, key: :email_encryption_key, mode: :per_attribute_iv
  attr_encrypted :password, key: :password_encryption_key, mode: :per_attribute_iv
  attr_encrypted :content, key: :content_encryption_key, mode: :per_attribute_iv

  def nickname_encryption_key
    ":\xADF\xDB\x02\xA0Y\xE9\xF4\xC8\x01\x83\xAE\xDDn\xAC\x9C\x1D\x9B\x80\xF2\x05\x9D\xC6\x8F\xE8.Ve\x92\x9B\x9C"
  end

  def email_encryption_key
    "\b\xCBx&m(\xC7/\xDEmJ\xD4\x86\xC2\xFBg\xE4i\xAC\xA5J$SO\xC3P\x87)\x7F\xAEf\xA8"
  end

  def password_encryption_key
    "C\xC5\xF2\xE0\x9C\x93A\x93V\xF6\xE4Ou\xB0\xC1`\x82%\xD6\a\x8A?\xE9h\x05\x7Fl\xCA\x922V"
  end

  def content_encryption_key
    "\xAC1E\xFA\xC5\x84\xED5}:\x9Fa\x7F\x972\xF7\xB0\xDDg\tC\x99\xFD\xDB\x02\x8DAK\x86\xC5\xD1<"
  end
end
