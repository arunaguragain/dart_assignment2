abstract class BankAccount {
  int _accountNumber;
  String _accountHolderName;
  double _balance;

  final List<String> _transactionHistory = [];

  BankAccount(this._accountHolderName, this._accountNumber, this._balance);

  double withdraw(double amount);
  double deposit(double amount);
  void displayAccountInfo() {
    print("Account info is");
    print("Account number: \$$_accountNumber");
    print("Account Holder Name: \$$_accountHolderName");
    print("Balance: $_balance");
  }

  void addTransaction(String transaction) {
    _transactionHistory.add(transaction);
  }

  void showTransactionHistory() {
    print("Transaction history for $_accountNumber:");
    if (_transactionHistory.isEmpty) {
      print("No transaction yet");
    } else {
      for ( String transaction in _transactionHistory) {
        print(transaction);
      }
    }
  }

  int get getAccountNumber {
    return _accountNumber;
  }

  set setAccountNumber(int accountNumber) {
    _accountNumber = accountNumber;
  }

  String get getAccountHolderName {
    return _accountHolderName;
  }

  set setAccountHolderName(String accountHolderName) {
    _accountHolderName = accountHolderName;
  }

  double get getBalance {
    return _balance;
  }

  set setBalance(double balance) {
    _balance = balance;
  }
}

abstract class InterestBearing {
  double calculateInterest();
}
