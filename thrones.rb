def thrones
	string = gets.chomp.to_s

	letter_frequency = Hash.new(0)

	i = 0
	until i > string.length do
		letter_frequency[string[i]] += 1
		i += 1
	end

	letter_frequency.delete_if { |key, value| key == nil }


	odd = 0
	even = 0

	letter_frequency.each_value { |value| 
		if value % 2 == 0
			even += 1
		elsif value % 2 != 0
			odd += 1
		end
	}

	if odd > 1
		puts "NO"
	else
		puts "YES"
	end

end

thrones()



			

