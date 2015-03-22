def echo(a)
	a.to_s
end

def shout(a)
	a.upcase
end

def repeat(a,b = 2)
	a = a + ((" " + a) * (b - 1))
end

def start_of_word(a,b)
	a[0,b]
end

def first_word(a)
	a.split(" ")[0]
end

def titleize(a)
	words = a.split(" ")
	i = 0
	title = ""
	while i < words.length
		if words[i].length > 4 || i == 0 || i == (words.length - 1)
			words[i] = words[i].capitalize
		end
		if i == 0
			title = words[i]
		else
			title = title + " " + words[i]
		end
		i += 1
	end
	title
end