require_relative 'statement'

class Account

  def initialize
    @account_statement = Statement.new
    @deposits = 0
    @withdrawals = 0
  end

  def credit(date, deposit)
    @deposits = (deposit + @deposits)
    @transaction = {
      Date: date,
      Deposit: deposit,
      Balance: (@deposits - @withdrawals)
    }
    @account_statement.transactions << @transaction
  end

  def debit(date, withdrawal)
    @withdrawals = withdrawal + @withdrawals
    @transaction = {
      Date: date,
      Debit: withdrawal,
      Balance: (@deposits - @withdrawals)
    }
    @account_statement.transactions << @transaction
  end

  def statement
    @account_statement.print
  end

end
