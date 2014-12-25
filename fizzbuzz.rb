$VERBOSE = nil

def fizzbuzz 


  ARGF.lines do |line|
    arguments =  line.split(" ")
    puts "#{arguments}"
  end
end

fizzbuzz();
