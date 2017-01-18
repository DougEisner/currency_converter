class Currency
  attr_reader = :currency_code, :amount

  def initialize(currency_code, amount)
    @currency_code = currency_code
    @amount = amount
  end

  # class Artist
  #   def initialize(name, catalog=[])
  #     @name = name
  #     @catalog = catalog
  #   end
  #

# def check_if_same_currency_code (currency_object1, currency_object2)
#   begin
#      (currency_object1 == currency_object2).to eq
#   else
#     raise DifferentCurrencyCodeError, "Different currency codes entered"
#   end
end

#puts wallet = Currency.new('USD', 10)

rates = {
  'USD' => {'USD' => 1.00000, 'EUR' => 0.93358,	'GBP' => 0.80642},
  'EUR' => {'USD' => 1.07114, 'EUR' => 1.00000,	'GBP' => 0.86379},
  'GBP' => {'USD' => 1.24005, 'EUR' => 1.15769,	'GBP' =>	1.00000}
}


rates_array =[]
rates.map {|k,v| rates_array << k}
puts rates_array

#if currency_code != rates.each[k][]
