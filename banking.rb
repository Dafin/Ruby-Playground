#!/usr/bin/ruby

class Account
	attr_reader :name
	attr_reader :balance
	
	def initialize(name,balance=100)
	@name = name
	@balance = balance
	end
	
  public
  
	def display_balance(pin_number)
		puts pin_number == pin ? "Balance: $#{@balance}.": pin_error
	end
	
	def withdraw(pin_number,amount)
		if pin_number == pin
			@balance-= amount
			puts "Withdrew #{amount}."
			puts "New Balance is #{@balance}."
		else
			puts pin_error
		end
	end
  
	private
	
	def pin
		@pin = 1234
	end
	
	def pin_error
		return "Access denied: incorrect PIN."
	end
	
end

checking_account = Account.new("Dafin",balance=99.99 )