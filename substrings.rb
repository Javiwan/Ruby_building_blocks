dictionary = ["below","down","go","going","horn","how","howdy","it",
	"i","low","own","part","partner","sit"]

def substrings(search, array)
	
	search.downcase!
	found = Hash.new

	array.each do |word|
		search.scan(word) do |y| 
			if found[word]
				found[word] += 1
			else
				found[word] = 1
			end
		end
	end
	puts found
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
