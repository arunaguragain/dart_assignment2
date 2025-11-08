import 'package:dart_assignment2/banking_system.dart';

class StudentAccount extends BankAccount {
  final double maximumBalance = 5000;
  StudentAccount(super.accountHolderName, super.accountNumber, super.balance);

  @override
  double deposit(double amount) {
    if (getBalance + amount > maximumBalance) {
      print("cannot deposit: limit exceeds");
    } else {
      setBalance = getBalance + amount;
      print("\$$amount deposited successfully");
    }
    return getBalance;
  }

  @override
  double withdraw(double amount) {
    if (getBalance < amount) {
      print("Insufficient amount");
    } else {
      setBalance = getBalance - amount;
      print("\$$amount withdrawn successfully");
    }
    return getBalance;
  }
}
