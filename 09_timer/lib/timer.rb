class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end
	
	def time_string
		hours = @seconds/3600
		minutes = (@seconds - 3600*hours)/60
		seconds = @seconds - hours*3600 - minutes*60
		return padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
	end

	def padded(number)
		str_number = number.to_s
		if str_number.length == 2 then return str_number else return "0"+str_number end
	end
end
