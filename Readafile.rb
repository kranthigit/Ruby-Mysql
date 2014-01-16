# To split the line in a give file ignoring first line.
# @Kranthi.. Author 
#! /usr/bin/ruby -w

puts "Enter the file name"
input = gets.chomp

begin

	File.opne("input", "r").each_line do |line|
		line.chomp!
		next if line.include? "xx"
			splitline = line.split("")
				puts "#{splitline}"
	end
end
