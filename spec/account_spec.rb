require 'account.rb'
describe Account do
  it 'we are able to make an account' do
    account = Account.new
    # expect(account.print_statement).to eq "date || credit || debit || balance\n"
    expect(account.show_balance).to eq 0
  end

  describe '#add_deposite' do
    it ' When we add dopiste, the balance of account gets more' do
      account = Account.new
      account.add_deposite(500,"14/01/2012")
      # expect(account.balance).to eq 500
      # expect(account.print_statement).to eq "date || credit || debit || balance\n14/01/2012 || 500.00 ||  || 500.00\n"
      expect(account.show_balance).to eq 500
    end
  end

  describe '#withdraw' do
    it 'When we withdraw from an account, the balance of account gets less' do
      account = Account.new(1000)
      account.withdraw(500, "14/01/2012")
      # expect(account.balance).to eq 500
      # expect(account.print_statement).to eq "date || credit || debit || balance\n14/01/2012 ||  || 500.00 || 500.00\n"
      expect(account.show_balance).to eq 500
    end
  end

  describe '#print_statement' do
    it 'We are able to see the account statement' do
      account = Account.new
      account.add_deposite(1000, '10/01/2012')
      account.add_deposite(2000, '13/01/2012')
      account.withdraw(500, '14/01/2012')
      statement = "date || credit || debit || balance\n14/01/2012 ||  || 500.00 || 2500.00\n13/01/2012 || 2000.00 ||  || 3000.00\n10/01/2012 || 1000.00 ||  || 1000.00\n"
      expect(account.print_statement).to eq statement
    end
  end

end
