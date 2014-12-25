def chocolate

  test_cases = gets.to_i
  answer_array = []



  test_cases.times do 
    variables = gets.chomp
    variables = variables.split(" ")

    dollars = variables[0].to_i
    cost_of_chocolate = variables[1].to_i
    wrappers_required = variables[2].to_i

    actual_total_chocolate = 0


    chocolates_purchased = dollars / cost_of_chocolate
    wrapper_count = chocolates_purchased


    until wrapper_count < 1
      if wrapper_count >= wrappers_required
        wrapper_count = wrapper_count - wrappers_required
        actual_total_chocolate = actual_total_chocolate + 1
        wrapper_count = wrapper_count + 1
      end

      if wrapper_count < wrappers_required
        wrapper_count = 0
      end
    end


    actual_total_chocolate = actual_total_chocolate + chocolates_purchased

    answer_array.push(actual_total_chocolate)

  end

  answer_array.each { |answer| puts "#{answer}" }




end

chocolate() 

