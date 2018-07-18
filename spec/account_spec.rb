require 'account'

describe Account do

  it "deposits money into an account" do
    # setup
    account = Account.new
    # exercise & verify
    expect(account.credit("10/01/2012", 500)).to eq([{ :Date => "10/01/2012", :Deposit => 500, :Balance => 500 }])
  end

  it "withdraws money from an account" do
    # setup
    account = Account.new
    # exercise & verify
    expect(account.debit("10/01/2012", 500)).to eq([{ :Date => "10/01/2012", :Debit => 500, :Balance => -500 }])
  end



end
