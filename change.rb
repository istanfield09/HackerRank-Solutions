def make_change(amount)
	coins = {
	  25 => 0,
	  10 => 0,
	  5 => 0,
	  1 => 0
	  }

  if amount == 0
  	amount = 0
  	coins = {}
  end

  while amount >= 25
  	amount -= 25
  	coins[:25] += 1
  end

  while amount >= 10
  	amount -= 10
  	coins[:10] += 1
  end

  while amount >= 5
  	amount -= 5
  	coins[:5] += 1
  end

  while amount >= 1
  	amount -= 1
  	coins[:1] += 1
  end

return coins

end

make_change(98)

puts "You'll need #{coins[:H]} half dollars, #{coins[:Q]} quarters, #{coins[:D]} dimes, #{coins[:N]} nickels, and #{coins[:P]} pennies."



