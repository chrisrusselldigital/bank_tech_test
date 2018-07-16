class Account

  def initialize
    @amount = 0
  end

  def deposit(date, amount)
    @date = date
    @amount = amount
    [@date, @amount]
  end

  def balance
    [@date, @amount]
  end

end
