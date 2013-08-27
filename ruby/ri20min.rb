#!/usr/bin/env ruby

class MegaGreeter
	attr_accessor :names

	# Create the Object
	def initialize(names = "World")
		@names = names
	end

	#say hi to everybody
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			# @names is a list of some kind, iterate
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	# say good by to everyone
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join") 
			# join the list elements with commas
			puts "Goodbye #{@names.join(",")}. come back soon!"
		else
			puts "goodbye #{@names}. Come back soon!"
		end
	end

end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	mg.names = "Zeke"
	mg.say_hi
	mg.say_bye

	mg.names = ["Albert", "brenda", "charles", 
		"Dave", "Engelbert"]
	mg.say_hi
	mg.say_bye

	mg.names = nil
	mg.say_hi
	mg.say_bye
end

