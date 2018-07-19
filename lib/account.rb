require_relative 'statement'

class Account

  def initialize
    @account_statement = Statement.new
    @balance = 0
  end

  def credit(date, deposit)
    if deposit < 0.1
      raise "Deposit needs to be larger than 0."
    end

    @balance += deposit
    @transaction = {
      Date: date,
      Deposit: deposit,
      Balance: @balance
    }
    @account_statement.transactions << @transaction

  end

  def debit(date, withdrawal)
    
    if withdrawal < 0.1
      raise "Withdrawal needs to be larger than 0."
    end

    if @balance < withdrawal
      raise "Your balance is too small to withdraw that amount"
    end

    @balance -= withdrawal
    @transaction = {
      Date: date,
      Debit: withdrawal,
      Balance: @balance
    }
    @account_statement.transactions << @transaction
  end

  def statement
    puts @account_statement.print
  end

end
