import 'package:dart_assignment2/banking_system.dart';

class PremiumAccount extends BankAccount implements InterestBearing {
  final double minimumBalance = 10000;
  final double interestRate = 0.05;

  PremiumAccount(super.accountHolderName, super.accountNumber, super.balance);

  @override
  double deposit(double amount) {
    setBalance = getBalance + amount;
    print("\$$amount deposited successfully");
    return getBalance;
  }

  @override
  double withdraw(double amount) {
    if (getBalance - amount < minimumBalance) {
      print("Insufficient amount");
    } else {
      setBalance = getBalance - amount;
      print("\$$amount withdrawn successfully");
    }
    return getBalance;
  }

  @override
  double calculateInterest() {
    double interest = (0.05 * getBalance)/12;
    return interest;
  }
}
