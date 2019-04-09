require "account.rb"
describe Account do
  it "we are able to make an account" do
    account = Account.new()
  end

  describe "#add_deposite" do
    it " When we add dopiste, the balance of account gets more" do
      account = Account.new()
      account.add_deposite(500)
      expect(account.balance).to eq 500
    end
  end
end
