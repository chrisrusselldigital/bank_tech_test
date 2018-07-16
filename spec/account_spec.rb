require 'account'

describe Account do
  it "takes a deposit" do
    # setup
    account = Account.new
    # exercise (deposit) & verify (change)
    expect { account.deposit(1000) }.to change { account.balance }.by(1000)
  end
end
