class Book
	attr_accessor :title
	def title
		ignore_words = ["a", "in", "the", "over", "and", "of", "an"]
	    return @title.capitalize.split.map {|x| if !ignore_words.include?x then x.capitalize else x end}.join(" ")
	end
end
