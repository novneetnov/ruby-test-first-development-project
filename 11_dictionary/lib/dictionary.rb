class Dictionary
	attr_accessor :dict
	def initialize
		@dict = {}
	end
	
	def entries
		return @dict
	end

	def add(param = {})	
		return @dict.update(param) if param.is_a?Hash
		@dict.update({param => nil})
	end

	def keywords
		return @dict.keys.sort
	end

	def include?(key)
		return @dict.has_key?(key)
	end

	def find(param)
		pattern = Regexp.new "^" + param
		return @dict.select {|key, value| key.to_s.match(pattern)}
	end

	def printable
		@dict.inject("") {|str, entry| str += "[" + entry[0].to_s + "]" + " " + "\""  + entry[1].to_s + "\""  + "\n"}[0..-2] + "\""
	end
end
