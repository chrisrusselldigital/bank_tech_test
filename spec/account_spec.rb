require 'account'

describe Account do

  it "completes an account credit" do
    # setup
    account = Account.new
    # exercise
    account.credit("10/01/2012", 500)
    # verify
    expect(account.transaction[:Date]).to eq("10/01/2012")
    expect(account.transaction[:Deposit]).to eq(500)
    expect(account.transaction[:Balance]).to eq(500)
  end

  it "completes an account withdrawal" do
    # setup
    account = Account.new
    # exercise
    account.debit("10/01/2012", 500)
    # verify
    expect(account.transaction[:Date]).to eq("10/01/2012")
    expect(account.transaction[:Debit]).to eq(500)
    expect(account.transaction[:Balance]).to eq(-500)
  end

  it "changes the account balance" do
    # setup
    account = Account.new
    # exercise
    account.credit("10/01/2012", 500)
    account.debit("10/01/2012", 500)
    # verify
    expect(account.transaction[:Balance]).to be(0)
  end

  it "prints an account statement" do
    # setup
    account = Account.new
    # exercise
    account.credit("10/01/2012", 500)
    # verify
    expect(account.statement).to eq([{ :Date => "10/01/2012", :Deposit => 500, :Balance => 500 }])
  end

end
