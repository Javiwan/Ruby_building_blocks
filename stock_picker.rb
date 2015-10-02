
def stock_picker(array)

	array_length = array.length
	start, rate, new_rate = 1, 0, 0
	best = []

	for x in 0...array_length

		for y in start...array_length

			new_rate = array[y] - array[x]

			if new_rate >= rate
				rate = new_rate
				best[0]= x
				best[1]= y

			end
	
		end

		start+=1

	end

	print best
	puts""
	
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([2,3,6,8,15,8,6,1,10])
stock_picker([17,3,6,1,15,8,6,1,20])
