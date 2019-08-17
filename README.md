#Setup 
 
1. cd twitter_app
2. bundle
3. Run below command in psql console to create a user or use any user/password in your system and specify that in database.yml. 
	psql=# create user lenny password 'leonard' createdb;
4. rails db:create
5. rails db:migrate
5. rails db:seed if you want to feed some data to your database.
6. rails s
7. Signup with a new user or use abc@def.com/qwertyui
