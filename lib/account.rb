require_relative 'statement'

class Account

  def initialize
    @account_statement = Statement.new
    @balance = 0
  end

  def credit(date, deposit)
    if deposit < 1
      raise "Deposit needs to be larger than 0."
    end
    @balance += deposit
    @transaction = {
      Date: date,
      Deposit: sprintf('%.2f', deposit),
      Balance: sprintf('%.2f', @balance)
    }
    @account_statement.transactions << @transaction
  end

  def debit(date, withdrawal)

    if withdrawal < 1
      raise "Withdrawal needs to be larger than 0."
    end

    @balance -= withdrawal
    @transaction = {
      Date: date,
      Debit: sprintf('%.2f', withdrawal),
      Balance: sprintf('%.2f', @balance)
    }
    @account_statement.transactions << @transaction
  end

  def statement
    @account_statement.print
  end

end
