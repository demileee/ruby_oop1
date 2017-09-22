class BankAccount
# WRITER
  def initialize(balance, rate)
    @balance = balance
    @interest_rate = (1 + (rate/100.00))
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def change_interest(rate)
    @interest_rate = (1 + (rate/100.00))
  end

  def gain_interest
    @balance = @balance*@interest_rate
  end

# NORMAL INSTANCE METHOD
  def check_balance
    puts "Your account balance is $#{@balance}"
  end
end

chequing = BankAccount.new(10, 0)
chequing.deposit(100)
chequing.check_balance

savings = BankAccount.new(1000, 5)
savings.gain_interest
savings.check_balance
