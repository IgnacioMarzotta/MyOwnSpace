# README

MyOwnSpace is a web-app developed as final-career project for Full-Stack development. Project was developed on Ruby On Rails, using multiple gems and the latest version of Rails & Ruby as of the time of development.

* Ruby version: 2.6.3
* Rails Version: 6.0.0

Gems included/used:
* Devise
* Faker(Development only)
* ActiveAdmin
* ActionText
* Omiauth
* PostgreSQL(For Release)
* SQLite3(For development)
* God
* Emoji
* ActiveStorage
* ReCaptcha
* RQRCode
* BCrypt(For end-to-end data encryption)

ActiveAdmin is used to supervise users in the sense of last login, last-login-ip and their current status in the platform. Admins cannot view/modify any user data, such as notes, passwords & calendar information.

Emoji, ActionText & ActiveStorage are used as complementary for text input in notes & passwords, to bring the best & most complete experience available.

Simplified application initialization(Depending on the platform):
* Push to server
* Reset the database
* Run pending migrations
* Run correspondent seeds
* Initialize application 