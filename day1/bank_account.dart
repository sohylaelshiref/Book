class BankAccount {
  String accountNumber;
  double balance;

  BankAccount({required this.accountNumber, required this.balance});

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Deposit amount must be positive');
    }
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Withdraw amount must be positive');
    }
    if (balance < amount) {
      throw IsNotEnough(message: 'Money isn\'t not enough');
    }
    balance -= amount;
  }
}

class IsNotEnough implements Exception {
  IsNotEnough({required this.message});
  String message;

  @override
  String toString() => message;
}
