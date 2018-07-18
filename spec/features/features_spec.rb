require 'statement'

describe Statement do

  it "prints account transactions" do
    # setup
    statement = Statement.new
    # exercise
    transaction_dbl = double(:date => "10/01/2012", :deposit => 500, :balance => 500)
    statement.transactions << transaction_dbl
    # verify
    expect(transaction_dbl.date).to eq("10/01/2012")
    expect(transaction_dbl.deposit).to eq(500)
    expect(transaction_dbl.balance).to eq(500)
  end

end
