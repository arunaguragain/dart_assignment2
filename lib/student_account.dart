import 'package:dart_assignment2/banking_system.dart';

class StudentAccount extends BankAccount {
  final double maximumBalance = 5000;
  StudentAccount(super.accountHolderName, super.accountNumber, super.balance);

  @override
  double deposit(double amount) {
    if (amount <= 0) {
      throw Exception("Amount must be greater than zero.");
    } else {
      if (getBalance + amount > maximumBalance) {
        print("cannot deposit: limit exceeds");
        addTransaction("transaction failed: limit exceeds");
      } else {
        setBalance = getBalance + amount;
        print("\$$amount deposited successfully");
        addTransaction("transaction done: \$$amount deposited");
      }
    }
    return getBalance;
  }

  @override
  double withdraw(double amount) {
    if (amount <= 0) {
      throw Exception("Amount must be greater than zero.");
    } else {
      if (getBalance < amount) {
        print("Insufficient amount");
        addTransaction("transaction failed: insufficient amount");
      } else {
        setBalance = getBalance - amount;
        print("\$$amount withdrawn successfully");
        addTransaction("transaction done: \$$amount withdrawn");
      }
    }
    return getBalance;
  }
}
