class Friend
	def greeting(name = "")
		return "Hello!" if name == ""
		return "Hello, #{name}!"
	end
end
