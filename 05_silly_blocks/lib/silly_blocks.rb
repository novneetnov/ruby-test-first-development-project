def reverser
	return yield.split.map {|word| word.reverse}.join(" ")
end

def adder(default_val = 1)
	return yield + default_val
end

def repeater(default_val = 1)
	return default_val.times {yield}
end
		
