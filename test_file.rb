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

puts wallet = Currency.new('USD', 10)
