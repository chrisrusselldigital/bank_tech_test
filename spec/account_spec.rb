require 'account'

describe Account do

  it "takes a date and amount of deposit" do
    # setup
    account = Account.new
    # exercise (set date and amount)
    account.deposit("14/01/2012",1)
    # verify (a/c date & balance)
    expect(account.balance).to eq(["14/01/2012",1])
  end

end
