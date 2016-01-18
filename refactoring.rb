$VERBOSE = nil  
require 'prime'   

def first_n_primes(n)

 
  puts "n must be an integer." if !n.is_a? Integer 
  puts "n must be greater than 0." unless n >= 0 
  

  prime_array ||= []     
    
  prime = Prime.new
  for num in (1..n)
    prime_array.push(prime.next)
  end
  return prime_array
end

first_n_primes(-5)