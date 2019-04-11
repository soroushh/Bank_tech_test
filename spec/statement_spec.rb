require "statement.rb"

describe Statement do
  let(:account_double){double(show_history: [date: '10/01/2012', credit: "100.00", debit: '', balance: "1000.00"])}
  let(:subject){ described_class.new(account_double)}
  it "We can make a statement and get its string" do
    expect(subject.print_statement).to eq "date || credit || debit || balance\n10/01/2012 || 100.00 ||  || 1000.00\n"
  end
end
