def chocolate 

	test_cases = gets.to_i

	until test_cases == 0 do 

		cuts_original = gets.to_i
		cuts = cuts_original
		solution_values = []

		maximum_value = 0 
		i = 0
		until i > cuts_original do 
			value = i * cuts
			if value > maximum_value
				maximum_value = value
			else
			end
			cuts = cuts - 1
			i = i + 1
		end

		solution_values.push(maximum_value)
		test_cases = test_cases - 1

		solution_values.each { |x| puts "#{x}"}
	end
end

chocolate()



			

