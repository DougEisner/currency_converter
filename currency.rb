class Currency
  attr_reader :currency_code, :amount

  def initialize(currency_code, amount)
    @currency_code = currency_code
    @amount = amount
  end

  def check_if_same_currency(currency)
    if @currency_code != currency.currency_code
      raise DifferentCurrencyCodeError, "Different currency codes entered"
    end
  end

  def +(value)
    check_if_same_currency(value)
    Currency.new(@amount + value.amount, @currency_code)
  end

  def -(value)
    check_if_same_currency(value)
    Currency.new(@amount - value.amount, @currency_code)
  end

  def *(value)
    check_if_same_currency(value)
    Currency.new(@amount * value.amount, @currency_code)
  end

  def to_s
    "Currency(amount=#{@amount}, currency_code=#{@currency_code})"
  end
end

# Must be created with an amount and a currency code.
# Must equal another Currency object with the same amount and currency code.

# Must NOT equal another Currency object with different amount or currency code.
# Must be able to be added to another Currency object with the same currency code.

# Must be able to be subtracted by another Currency object with the same currency code.

# Must raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Must be able to be multiplied by an int or float and return a Currency object.
# Currency() must be able to take one argument with a currency symbol embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency code. It can also take two arguments, one being the amount and the other being the currency code.
#

####  CODE FROM CLASS... ALBUM / ARTIST CLASS CRAP
# class Artist
#   def initialize(name, catalog=[])
#     @name = name
#     @catalog = catalog
#   end
#
#   def add_album(album)
#     @catalog << album
#   end
#
#
# end
#
# class Album
#   attr_reader :name, :number_in_stock, :normal_price, :artists
#
#   def initialize(name, number_in_stock, normal_price)
#     @name = name
#     @number_in_stock = number_in_stock
#     @sale_price = normal_price
#     @artists = []
#   end
#
#   def sell_copy(copies=1)
#     @number_in_stock -= copies
#   end
#
#   def add_number_of_albums(copies=1)
#     @number_in_stock += copies
#   end
#
#   def add_artist(artist)
#     @artists << artist
#   end
#
#   def discount_price(percent)
#     sale_price = percent * sale_price
#   end
# end
