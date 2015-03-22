def translate(x)
	a = x.split(" ")
	i = 0
	result = ""
	while i < a.length 
		if a[i].index(/[aeiou]/) == 0
			a[i] = a[i] + "ay"
		elsif a[i].index(/[aeiou]/) == 1
			if a[i][0..1] == "qu"
				a[i] = a[i][2..-1] + a[i][0..1] + "ay"	
			else
				a[i] = a[i][1..-1] + a[i][0] + "ay"
			end
		elsif a[i].index(/[aeiou]/) == 2
			if a[i][1..2] == "qu"
				a[i] = a[i][3..-1] + a[i][0..2] + "ay"	
			else
				a[i] = a[i][2..-1] + a[i][0..1] + "ay"
			end
		else
			a[i] = a[i][3..-1] + a[i][0..2] + "ay"
		end
		if i == 0
			result = a[i]
		else
			result = result + " " + a[i]
		end
		i += 1
	end
	result
end