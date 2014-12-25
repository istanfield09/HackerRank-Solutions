

def delete 
	test_cases = gets.to_i
	strings = []
	deletions_array = []

	1.upto(test_cases) do
	  string = gets

	  i = 0
	  b = 1	
	  deletions = 0
 
	   until string[i] != "A" && string[i] != "B" do
	     if string[i] == string[b]
			string.slice!(b)
			deletions = deletions + 1
		  elsif string[i] != string[b]
			i = i + 1
			b = b + 1
		  end
		end

	  deletions_array.push(deletions)	
	end

	deletions_array.each { |x| puts "#{x}"}
	
end

delete()


