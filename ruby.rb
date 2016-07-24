# Write an algorithm to find the maximum value in a list, for example [14, 90, 13, 88, 43, 71] => 90
def highest_num(list)
	max = list[0]
	i = 0
	until i >= list.length
		max = list[i] if list[i] > max
		i +=1
	end
	max
end
