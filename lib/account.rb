class Account
  attr_reader :balance, :account_history
  def initialize(balance=0)
    @balance = balance
    @account_history = []
  end

  def add_deposite(money_ammount, date = Time.now.strftime("%d/%m/%Y"))
    @balance += money_ammount
    @account_history.push({date: date , credit: money_ammount.to_s+".00", debit:"", balance: @balance.to_s+".00" })
  end

  def withdraw(money_ammount, date = Time.now.strftime("%d/%m/%Y"))
    @balance -= money_ammount
    @account_history.push({date: date , credit:"", debit:money_ammount.to_s+".00", balance: @balance.to_s+".00" })
  end

  def print_statement()
    print_statement_string
  end

  private

  def print_statement_string()
    the_statement_text = "date || credit || debit || balance\n"
    @account_history.reverse.each do |transfer|
      the_statement_text += "#{transfer[:date]} || #{transfer[:credit]} || #{transfer[:debit]} || #{transfer[:balance]}\n"
    end
    return the_statement_text
  end

end
