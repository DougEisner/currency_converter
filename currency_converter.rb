#CurrencyConverter class

# Maybe this rate table should be in the class Converter.
rates = {
  'USD' => {'USD' => 1.00000, 'EUR' => 0.93358,	'GBP' => 0.80642},
  'EUR' => {'USD' => 1.07114, 'EUR' => 1.00000,	'GBP' => 0.86379},
  'GBP' => {'USD' => 1.24005, 'EUR' => 1.15769,	'GBP' =>	1.00000}
}

class Converter
  attr_reader :currency_code, :rate

  def initialize(currency_code, rate)
    @currency_code = currency_code
    @rate = rate
  end

  def convert_to_same_currency(currency)
    Currency.new(@currency_code, @amount)
  end


  def convert_to_new_currency(new_currency)
    Currency.new(new_currency, @amount * rates[@currency_code][new_currency])
  end

  def check_have_rate(currency_code)
    unless rates.key? (currency_code)
      raise UnknownCurrencyCodeError, "Unknown currency entered"
    end
  end

  def convert_currency(new_currency_code)
    check_have_rate(new_currency_code)
    new_amount = @amount * rates[@currency_code][new_currency_code]
    Currency.new(currency_code, new_amount)
  end





end
