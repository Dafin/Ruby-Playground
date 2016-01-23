#!/usr/bin/ruby

# Building an app to convert miles per gallons into kilomteres per litre, to 2 sig. figs. -DA
private

def converter(mpg)
	km_pg = 1.609344 * mpg

	km_pl = km_pg / 4.54609188
	puts "..is equivalent to #{ km_pl.round(2) } Kilometers Per Litre"

end

public #needed


def is_a_number?(to_convert)

	to_convert.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true 
	
end

##############
puts "What is the mpg value you are trying to convert?"
to_convert =  gets.chomp

	if to_convert.is_a_number?(to_convert)
		converter(to_convert.to_f)
	elsif
		puts "oops, type in a number"
	end