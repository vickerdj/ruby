def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(array)
	i = 0
	total = 0
	while i < array.length
		total += array[i]
		i += 1
	end	
	total
end

def multiply(a,b)
	a * b
end 

def power(a,b)
	i = 1
	while i <= b
		a *= a
		i += 1
	end
end 

def factorial(a)
	i = a - 1
	while i >= 0
		a *= i
		i -= 1
	end
end