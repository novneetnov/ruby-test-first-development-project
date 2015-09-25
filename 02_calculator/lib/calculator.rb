def add(*numbers)
	return numbers.inject(0) {|total, elem| total += elem}
end

def subtract(num1, num2)
	return num1 - num2
end

def sum(array)
	return array.inject(0) {|total, elem| total+= elem}
end

def multiply(*numbers)
	return numbers.inject(1) {|total, elem| total*=elem}
end

def power(num1, num2)
	return num1**num2
end

def factorial(number)
	return 1 if number == 0
	return number * factorial(number-1)
end



