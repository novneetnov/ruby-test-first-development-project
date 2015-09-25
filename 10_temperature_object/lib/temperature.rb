class Temperature
	attr_accessor :fahrenheit, :celsius
	
	def initialize(options = {})
		if options.has_key?:f
			@fahrenheit = options[:f]
			@celsius = (@fahrenheit - 32) * 5.0/9.0
		elsif options.has_key?:c
			@celsius = options[:c]
			@fahrenheit = @celsius * 9.0/5.0 + 32
		end
	end

	def in_fahrenheit
		return @fahrenheit
	end

	def in_celsius
		return @celsius
	end

	def self.from_celsius(celsius)
		return Temperature.new(:c => celsius)	
	end

	def Temperature.from_fahrenheit(fahrenheit)
		return Temperature.new(:f => fahrenheit)
	end
end

class Celsius < Temperature
	def initialize(celsius)
		@celsius = celsius
		@fahrenheit = @celsius * 9.0/5.0 + 32
	end
end
 
class Fahrenheit < Temperature
	def initialize(fahrenheit)
		@fahrenheit = fahrenheit
		@celsius = (@fahrenheit - 32) * 5.0/9.0
	end
end
