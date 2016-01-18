$VERBOSE = nil  
require 'prime'   

def first_n_primes(n)

 
  puts "n must be an integer." if !n.is_a? Integer 
  puts "n must be greater than 0." unless n >= 0 
  

  prime_array ||= []     
    
  prime = Prime.new
  
  n.times {prime_array << prime.next}

end



first_n_primes(5)