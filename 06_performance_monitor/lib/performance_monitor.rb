def measure(default = 1)
	time1 = Time.now
	default.times do
		yield
	end
	time2 = Time.now
	return (time2-time1)/default
end
