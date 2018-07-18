require 'statement'

describe Statement do

  it "prints the account header" do
    # setup
    statement = Statement.new
    # exercise & verify
    expect(statement.header).to eq(["date || credit || debit || balance"])
  end

end
