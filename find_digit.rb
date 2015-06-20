
def divide(num, answers)
  found_nums = 0

  string_num = num.to_s
  num_array = string_num.split("").map(&:to_i)

  num_array.each { |x|
    if (x > 0)
      if ( num % x == 0 )
        found_nums += 1
      end
    end
  }


  answers.push(found_nums)

end

answers = []
test_cases = gets.to_i

test_cases.times do
  num = gets.to_i
  divide(num, answers)
end

answers.each { |answer| puts answer }

