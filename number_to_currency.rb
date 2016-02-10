#!/usr/bin/ruby

#http://www.codewars.com/kata/55902c5eaa8069a5b4000083/train/ruby


def format_money(amount)

  a,b = sprintf("%0.2f", amount).split('.')  # seperate numbers before and after dp
  a.gsub!(/(\d)(?=(\d{3})+(?!\d))/, '\\1,') # gsub Returns a copy of str with the all occurrences of pattern substituted for the second argument.
  money = "$#{a}.#{b}" # Construct currency value string, with dollar sign and pre dp /post dp number placement
  puts money #debugging, can commment out
  return money

end


format_money(3.0)
format_money(3.30)
format_money(3.35)
format_money(3)