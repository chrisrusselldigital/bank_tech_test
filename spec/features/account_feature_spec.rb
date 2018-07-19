require 'account'

describe Account do

  it "prints the whole statement" do
    account = Account.new
    account.credit("10/01/2012", 1000)
    expect { account.statement }.to output(
    'date || credit || debit || balance
10/01/2012 || 1000 ||  || 1000
{:Date=>"10/01/2012", :Deposit=>1000, :Balance=>1000}

').to_stdout
  end

end
