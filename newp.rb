def palindrome?(str)
	if str == str.reverse
		return true
	else
		return false
	end
end


def palindrome

	test_cases = gets.to_i
	solutions = []
	difference_values = []

	until test_cases == 0 do

		string = gets.chomp.to_s


		a = 0
		b = -1
		difference = 0
		difference_sum = 0
		until palindrome?(string) do
			until string[a] == string[b] do
				if string[a].ord > string[b].ord
					difference = string[a].ord - string[b].ord
					string[a] = string[b]
				else
					difference = string[b].ord - string[a].ord
					string[b] = string[a]
				end
				difference_sum = difference_sum + difference
			end
			a = a + 1
			b = b - 1
		end

		solutions.push(string)
		difference_values.push(difference_sum)
		test_cases = test_cases - 1
	end

	difference_values.each { |x| puts "#{x}"}
end

palindrome()



			

