

def calculatePossible(min, max) 
  totalPermutations = 0

  for i in min...max+1
    totalPermutations += 10**i

    if i == max
      if totalPermutations > 1000000
        puts "YES"
      else
        puts "NO"
      end
    end
  end
end


test_cases = gets.chomp.to_i
all_ranges = []

test_cases.times do 

  min_max = gets.chomp.to_s 
  ranges = min_max.split(" ")
  all_ranges.push(ranges)


end


i = 0

test_cases.times do

  test_case = all_ranges[i]
  min = test_case[0].to_i
  max = test_case[1].to_i


  calculatePossible(min, max)

  i += 1
end
