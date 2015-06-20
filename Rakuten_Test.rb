def solution (a)

	extreme_deviation = 0
	extreme_deviation_index = 0
	array_index = 0
	array_size = a.size

	if array_size == 0
		return -1
	else
		array_average = a.inject{ |sum, element| sum + element }.to_f / array_size	

			a.each { |element|
				deviation = (element.abs - array_average).abs
				if deviation > extreme_deviation
					extreme_deviation_index = array_index
					extreme_deviation = deviation
				else
				end

				array_index = array_index + 1

			}

			
	end

	return extreme_deviation_index
end