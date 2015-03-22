def measure(n = 1)
	i = 1
	average_time = 0
	while i <= n
		a = Time.now
		yield
		b = Time.now
		elapsed_time = b - a
		average_time = (average_time + elapsed_time)/n
		i += 1
	end
	average_time
end

measure do 
	sleep(1)
end