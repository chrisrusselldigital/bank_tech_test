class Account

  def initialize
    @statement = []
    @deposits = 0
    @withdrawals = 0
  end

  def credit(date, deposit)
    @deposits = deposit + @deposits
    @transaction = {
      Date: date,
      Deposit: deposit,
      Balance: (@deposits - @withdrawals)
    }
    @statement << @transaction
  end

  def debit(date, withdrawal)
    @withdrawals = withdrawal + @withdrawals
    @transaction = {
      Date: date,
      Debit: withdrawal,
      Balance: (@deposits - @withdrawals)
    }
    @statement << @transaction
  end

  def transaction
    @transaction
  end

  def statement
    puts ["date || credit || debit || balance"]
    @statement.reverse_each do |transaction|
      puts "#{transaction[:Date]} || #{transaction[:Deposit]} || #{transaction[:Debit]} || #{transaction[:Balance]} "
    end

  end

end
