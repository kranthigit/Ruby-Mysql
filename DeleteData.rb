#! /usr/bin/ruby -w 

require 'Mysql'

puts "Enter the value:"
value = gets.chomp


begin

 con = Mysql.real_connect( '127.0.0.1', 'username','password', 'Databasename', portnumber )
	 words = value.split(" ")
  		for item in words
       		    con.query ("delete from #{item} where < Conditions >")
  		 end
end
