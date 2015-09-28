require 'mysql2'

client = Mysql2::Client.new(:host=>"localhost", :username=>"root", :password=>"password")
results = client.query("INSERT INTO sakila.actor (first_name, last_name) VALUES ('MATTHEW', 'WILKINSON');")
results.each do | row |
  puts row
end

#This was using a test database downloaded online