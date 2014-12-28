

def stoneCount

  test_cases = gets.to_i
  answers_array_array = Array.new

  test_cases.times do
    number_of_stones = gets.chomp.to_i
    differences = Array.new

    2.times do
      differences.push(gets.chomp.to_i)
    end

    combinations = differences.repeated_combination(number_of_stones).to_a


    index = 0
    concluding_stones = Array.new

    number_of_stones.times do
      combinations[index].delete_at(0)
      concluding_stones.push(combinations[index].reduce(:+))
      index = index + 1
    end

    concluding_stones = concluding_stones.uniq
    concluding_stones = concluding_stones.sort
    answers_array_array.push(concluding_stones)

  end


  answers_array_array.uniq
  answers_array_array.each { |x| puts "#{x.join(" ")}"}



end

stoneCount()
