def translate(word)
	if word.split.length > 1
		words_list = word.split
		return (words_list.inject("") {|total, word| total += translate(word) + " "}).strip
	end

	vowels = ["a", "e", "i", "o", "u"]
	return word + "ay" if vowels.include?word[0]
	if word.include?"qu" then
		head = word[word.index("qu")+2..-1]
		tail = word[0..word.index("qu")+1]
		return head+tail+"ay"
	else
		for idx in 0..word.length
			letter = word[idx]
			if vowels.include?letter
				return word[idx..-1] + word[0..idx-1] + "ay"
			end
		end
	end
end

