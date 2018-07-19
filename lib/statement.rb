class Statement

  def initialize
    @statement = []
  end

  def print
    puts header
    puts transactions
  end

  def header
    @header = ["date || credit || debit || balance"]
  end

  def transactions
    @statement.reverse_each do |transaction|
      puts "#{transaction[:Date]} || #{transaction[:Deposit]} || #{transaction[:Debit]} || #{transaction[:Balance]}"
    end
  end

end
