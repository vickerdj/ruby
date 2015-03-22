
def reverser
	words = yield.split(" ")
	i = 0
	result = ""
	while i < words.length
		if i == 0
			result = words[i].reverse
		else
			result = result + " " + words[i].reverse
		end
		i += 1 
	end
	result
end

def adder(a = 1)
	yield + a
end

def repeater(a = 1)
	i = 1
	while i <= a 
		yield
		i += 1
	end
end