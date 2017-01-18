## currency_converter , week2, HW1
require_relative 'currency'
require_relative 'currency_converter'

def main

  puts "What currency do you want to convert from: USD, EUR or GBP?"
  convert_from = gets.chomp

  puts "What currency do you want to convert to: USD, EUR or GBP?"
  convert_to = gets.chomp

  puts "What amount would you like to convert?"
  amount = gets.chomp.to_f

  c1 = Currency.new(convert_from, amount)

  c2 = c1.convert_currency(convert_to)
  puts "The amount give equals: #{c2[amount]} #{c2[currency_code]}"






end

main if __FILE__ == $PROGRAM_NAME
