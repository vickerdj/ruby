class Timer

def initialize
	@seconds = 0
end

def seconds
	@seconds
end

def seconds=(x)
	@seconds = x
end

def time_string
		@hours = @seconds/3600
		@secsLeft = @seconds % 3600
		@mins = @secsLeft/60
		@secs = @secsLeft % 60
		result = padded(@hours) + ":" + padded(@mins) + ":" + padded(@secs)
end

def padded(x)
	if x < 10
		"0" + x.to_s
	else
		x.to_s
	end
end

end