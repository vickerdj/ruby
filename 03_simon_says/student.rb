x = "simon says".split(" ")
puts x[0]
puts x[1]
puts x[2]

i = 0
title = ""
puts x.length

while i < x.length
	x[i] = x[i].capitalize
	if i == 0
		title = x[i]
	else
		title = title + " " + x[i]
	end

	i += 1
end

puts title
puts x[0]
puts x[1]
