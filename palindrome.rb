

def palindrome

	test_cases = gets.to_i

	until test_cases == 0 do

		string_original = gets.chomp.to_s
		string_length   = string_original.length.to_i


		string_wingspan = 0

		#calculates wingspan
		if string_length % 2 == 0
			string_wingspan = (string_length / 2)
		else
			string_wingspan = ((string_length - 1) / 2)
		end



		
		#removes terminating wing
		if string_length % 2 == 0
			removal = string_original[string_wingspan...string_length]
		else
			removal = string_original[string_wingspan+1...string_length]
		end

		first_chunk = string_original.chomp!(removal)
		

		#duplicates preceeding wing, reverses the wing, then affixes it to the terminating side of the string
		prec_wing = string_original[0...string_wingspan].reverse
		palindromed_string = first_chunk + prec_wing

		puts "#{palindromed_string}"


		alphabet = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]

		original_to_int   = []
		palindrome_to_int = []

		removal.each_char { |x| 
			original_to_int.push(x.ord)
		}

		prec_wing.each_char { |x|
			palindrome_to_int.push(x.ord)
		}

		i = 0
		changes = 0
		until i > removal.length do
			changes = changes + (original_to_int[i].to_i - palindrome_to_int[i].to_i)
			i       = i + 1
		end


		puts "#{original_to_int}"
		puts "#{palindrome_to_int}"
		puts "#{changes}"

		test_cases = test_cases - 1


	end



	
end

palindrome()

