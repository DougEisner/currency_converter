## currency_converter , week2, HW1
require_relative 'currency'
require_relative 'converter'

def main

  puts "What currency do you want to convert from: USD or EUR?"
  start_currency = gets.chomp

  puts "What currency do you want to convert to: USD or EUR?"
  end_currency = gets.chomp

  puts "What amount would you like to convert?"
  start_currency = gets.chomp

  puts "currency:"
  p Currency.new('USD', 10)
  p Currency.new('JPY', 33)
  p Currency.new('JPY', 33) + Currency.new('JPY', 34)

## current conversion rates
##  USD to EUR =
end

main if __FILE__ == $PROGRAM_NAME
