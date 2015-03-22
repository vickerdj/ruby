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
	if @seconds < 10
		"00:00:0" + @seconds.to_s
	elsif @seconds < 60
		"00:00:" + @seconds.to_s
	elsif @seconds < 3600
		@minutes = @seconds/60
		@left = @seconds % 60
		if @minutes < 10
			if @left < 10
				"00:0" + @minutes.to_s + ":0" + @left.to_s
			else
				"00:0" + @minutes.to_s + ":" + @left.to_s
			end
		else
			if @left < 10
				"00:" + @minutes.to_s + ":0" + @left.to_s
			else
				"00:" + @minutes.to_s + ":" + @left.to_s
			end
		end
	else
		@hours = @seconds/3600
		@left = @seconds % 3600
		@minutes = @left/60
		@secsleft = @left % 60
		if @hours < 10
			if @minutes < 10
				if @left < 10
					"0" + @hours.to_s + ":0" + @minutes.to_s + ":0" + @secsleft.to_s
				else
					"0" + @hours.to_s + ":0" + @minutes.to_s + ":" + @secsleft.to_s
				end
			else
				if @left < 10
					"0" + @hours.to_s + ":0" + @minutes.to_s + ":0" + @secsleft.to_s
				else
					"0" + @hours.to_s + ":0" + @minutes.to_s + ":" + @secsleft.to_s
				end
			end
		else
			if @minutes < 10
				if @left < 10
					@hours.to_s + ":0" + @minutes.to_s + ":0" + @secsleft.to_s
				else
					@hours.to_s + ":0" + @minutes.to_s + ":" + @secsleft.to_s
				end
			else
				if @left < 10
					@hours.to_s + ":0" + @minutes.to_s + ":0" + @secsleft.to_s
				else
					@hours.to_s + ":0" + @minutes.to_s + ":" + @secsleft.to_s
				end
			end
		end
	end
end

end