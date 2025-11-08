import 'package:dart_assignment2/banking_system.dart';

class PremiumAccount extends BankAccount implements InterestBearing {
  final double minimumBalance = 10000;
  final double interestRate = 0.05;

  PremiumAccount(super.accountHolderName, super.accountNumber, super.balance);

  @override
  double deposit(double amount) {
    if (amount <= 0) {
      throw Exception("Amount must be greater than zero.");
    } else {
      setBalance = getBalance + amount;
      print("\$$amount deposited successfully");
      addTransaction("transaction done: \$$amount deposited");
    }
    return getBalance;
  }

  @override
  double withdraw(double amount) {
    if (amount <= 0) {
      throw Exception("Amount must be greater than zero.");
    } else {
      if (getBalance - amount < minimumBalance) {
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

  @override
  double calculateInterest() {
    double interest = (interestRate * getBalance) / 12;
    return interest;
  }
}
