class Book
	def title=(a)
		@title = a
	end

	def title
		words = @title.split(" ")
		i = 0
		result = ""
		while i < words.length
			if i == 0
				result = words[i].capitalize
			else
				if ["and","or","in","the","of","a","an"].include?(words[i])
					result = result + " " + words[i]
				else
					result = result + " " + words[i].capitalize
				end
			end
		i += 1
		end
		result
	end
end