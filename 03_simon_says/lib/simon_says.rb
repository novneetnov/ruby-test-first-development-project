def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, times = 2)
	ans = word
	(times - 1).times do
		ans += " #{word}"
	end
	return ans
end

def start_of_word(word, limit)
	return word[0..limit-1]
end

def first_word(word)
	return word.split(" ")[0]
end

def titleize(word)
	ignore_words = ["a", "in", "the", "over", "and"]
	return word.capitalize.split.map {|x| if !ignore_words.include?x then x.capitalize else x end}.join(" ")
end


