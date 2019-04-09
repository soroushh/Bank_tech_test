class Account
  attr_reader :balance
  def initialize(balance=0)
    @balance = balance
  end

  def add_deposite(money_ammount)
    @balance += money_ammount
  end

end
