

def max_exclusiveor
  l = gets.to_i
  r = gets.to_i


  #push the range of available values into an array called domain and range
  domain = []
  l.upto(r) do |x|
  	domain.push(x)
  end

  range = []
  l.upto(r) do |x| 
    range.push(x)
  end


  maxXor = 0
  current_Xor = 0

  domain.each { |x| 
  	range.each { |y|
  	  current_Xor = x ^ y

  	  if current_Xor > maxXor
  	  	maxXor = current_Xor
  	  end

  	  }
    }

 

  puts "#{maxXor}"
end


max_exclusiveor()







		





