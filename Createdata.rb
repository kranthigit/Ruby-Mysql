# To create data we need Mysql drivers.
#! /usr/bin/ruby -w

require 'Mysql'

begin

	con = Mysql.new 'localhost', 'username', 'password', 'databasename' # Connect to mysql.

	rs = con.query("select Id, Name, Address, Age, Country, State, Zipcode
 			from Person_data
			where
			Name = 'Test'")
				fields = rs.fetch_fields # To fetch the fileds, means to show the column names in the results.
		 			puts "#{fields[0].name}\t#{fields[1].name}\t#{fields[2].name}\t#{fields[3].name}\t#{fields[4].name}\t#{fields[5].name}\t#{fields[6].name}"
						rs.each do |row| # To print the relusts
							puts "#{row[0]}\r#{row[1]\t#{row[2]}\r#{row[3]\#{row[4]}\r#{row[4]\t#{row[6]}"
						end

end		
