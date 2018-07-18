require 'account'

describe Account do

  it "withdraws money from an account" do
    # setup
    account = Account.new
    # exercise & verify
    expect(account.debit("10/01/2012", 500)).to eq([{ :Date => "10/01/2012", :Debit => 500, :Balance => -500 }])
  end

  it "deposits money from an account" do
    # setup
    account = Account.new
    # exercise & verify
    expect(account.credit("10/01/2012", 500)).to eq([{ :Date => "10/01/2012", :Deposit => 500, :Balance => 500 }])
  end

  it "fails if deposit is less than zero" do
    # setup
    account = Account.new
    # exercise & verify
    expect { account.credit("10/01/2012", 0) }.to raise_error(RuntimeError, "Deposit needs to be larger than 0.")
  end

  it "fails if withdrawal is less than zero" do
    # setup
    account = Account.new
    # exercise & verify
    expect { account.debit("10/01/2012", 0) }.to raise_error(RuntimeError, "Withdrawal needs to be larger than 0.")
  end





end
