# README

MyOwnSpace is a web-app developed as final-career project for Full-Stack development. Project was developed on Ruby On Rails, using multiple gems and the latest version of Rails & Ruby as of the time of development.

* Ruby version: 2.6.3
* Rails Version: 6.0.0

Gems included/used:
(From most to least important)
* attr_encrypted
* Devise
* ActiveStorage
* Omiauth (Facebook, Twitter & Google)
* ActiveAdmin
* ActionText
* Chartkick
* Groupdate
* ReCaptcha
* RQRCode
* God
* Emoji
* Faker(Development only)

Database:
* PostgreSQL(For Release)
* SQLite3(For development)

Libraries:
* jQuery(+ AJAX)
* Moment
* FullCalendar
* Turbolinks
* Webpacker
* Trix

ActiveAdmin is used to supervise users in the sense of last login, last-login-ip and their current status in the platform. Admins cannot view/modify any user data, such as notes, passwords & calendar information.

Emoji, ActionText & ActiveStorage are used as complementary for text input in notes & passwords, to bring the best & most complete experience available.

Simplified application initialization(Depending on the platform):
* Push to server
* Reset the database
* Run pending migrations
* Run correspondent seeds
* Initialize application
* BodyColor adding can be done through ActiveAdmin, DON'T RUN SEEDS AGAIN ONCE DEPLOYED.