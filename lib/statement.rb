class Statement
  def initialize(account)
    @account = account
  end

  def print_statement
    show_the_statement_text
  end

  private
  def show_the_statement_text()
    the_statement_text = "date || credit || debit || balance\n"
    @account.show_history.reverse.each do |transfer|
      the_statement_text += "#{transfer[:date]} || #{transfer[:credit]} || #{transfer[:debit]} || #{transfer[:balance]}\n"
    end
    the_statement_text
  end
end
