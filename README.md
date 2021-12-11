# COMMAND

rake wh:make_table  => drop if exist and create tables in psql database

rake wh:populate:* => populate psql tables with data from mysql database 

* = quote, elevator, contact, customer

rake wh:reset => Does all the previous rake command in order

rake final:setup  => does rake db:reset and rake final:setup
# Elevator-Media-Stream

- gem installed "Rspec" version 4.1.0

in Development environment. the option to test the integration of a new option

to have access to this option a ["filename"]_spec.rb must be created that correspond to the original file

which contain the block of code that will be tested.  by creating the context and the 

requirement in which the file will be tested, in the console , run : $ bundle exec rspec --format documentation 

or bundle exec rspec ["filename"]. it will recreate the test established . 

for this project , it will test an API at the Elevator media module in the streamer.rb file.

the process will be the same as explained above