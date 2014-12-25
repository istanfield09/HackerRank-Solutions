number_of_tests = gets.to_i

i = 0
cycles = []


until i == number_of_tests
	cycles[i] = gets.to_i
	i = i + 1
end

i = 0
meters_of_growth = []

until i == cycles.length
	meters_of_growth.push(0.to_i)
	i = i + 1
end

# puts "#{cycles}"
# puts "#{meters_of_growth}"

growth_index = 0 
cycles.each { |c|
	
	season = 0

	until season > c
		season = season + 1
		if season == 0 then 
			meters_of_growth[growth_index] = meters_of_growth[growth_index]
			
		elsif season % 2 != 0 && season != 0 then 
			meters_of_growth[growth_index] = meters_of_growth[growth_index] + 1
			
		elsif season % 2 == 0 then 
			meters_of_growth[growth_index] = meters_of_growth[growth_index] * 2
		
		end



		

	end

	puts "#{meters_of_growth[growth_index]}"
	growth_index = growth_index + 1

}







		





