# minitoko
minitoko

How to setup the APP:

You have to install the rvm / rbenv
Postgres as database.

open your console:
go to this root directory
change database.yml according to your postgres user

execute this :

bundle install
bundle exec rake db:create
bundle exec rake db:migrate

rake db:seed 

rails s 


Open Postman Files on public/minitoko.json
you could Open on POSTMAN tools, and export it.


API v1 :
* All list of the API are there. 
* you just have to try the registration API once ( for create user ). 
* and also, all login session are handled via pre-requiset scripts
  and postman variable
* FOR SEARCHING METHODS :
  use q=blablabla as parameters 
  example : localhost:3000/api/v1/products?q=product1orproduct2orproduct3



default user:
user1@example.com / samurai1


After run that, you could try all the API listed on the POSTMAN ( public / minitoko.json).



thanks and regards !



