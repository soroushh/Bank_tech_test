class Account
  # attr_reader :balance, :account_history
  def initialize(balance = 0)
    @balance = balance
    @account_history = []
  end

  def add_deposite(money_ammount, date = Time.now.strftime('%d/%m/%Y'))
    increase_balance(money_ammount)
    add_transaction_to_account_history_depositing(money_ammount, date)
  end

  def withdraw(money_ammount, date = Time.now.strftime('%d/%m/%Y'))
    decrease_balance(money_ammount)
    add_transaction_to_account_history__withdrawing(money_ammount, date)
  end

  def show_balance
    @balance
  end

  def show_history()
    @account_history
  end

  private
  def add_transaction_to_account_history_depositing(money_ammount, date = Time.now.strftime('%d/%m/%Y'))
    @account_history.push(date: date, credit: money_ammount.to_s + '.00', debit: '', balance: @balance.to_s + '.00')
  end

  def add_transaction_to_account_history__withdrawing(money_ammount, date = Time.now.strftime('%d/%m/%Y'))
    @account_history.push(date: date, credit: '', debit: money_ammount.to_s + '.00', balance: @balance.to_s + '.00')
  end

  def decrease_balance(money_ammount)
    @balance -= money_ammount
  end

  def increase_balance(money_ammount)
    @balance += money_ammount
  end
end
