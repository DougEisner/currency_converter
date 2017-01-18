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
